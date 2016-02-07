import processing.core.PApplet;
import java.util.LinkedList;
import java.util.ArrayList;

/************************************************************************************************/
public class Neuron {
	PApplet parent;
	float t_data[] = { 0f, 0f }; // Membrane voltage, Pulse (0,1)
	float tau_inv = 0.1f; // Inverse time constant.
	float theta = 2.5f; // Firing threshold.
	float theta_inc = 0.05f; // Rate of change for theta when dialed.
	int outputPulseWidth = 3;
	int outputPulseTimer = 0;

	final int INPUTS = 3;
	final int OUTPUTS = 3;
	boolean connectedOutputs[] = { false, false, false };
	ArrayList<Connection> inputs = new ArrayList<Connection>();

	// Function generator stuff.
	boolean signalNeuron = false;
	float pulseTimer = 0;
	float freqTimer = 0;
	float frequency = 1.0f;
	float freqInc = 0.05f;
	final float MIN_FREQ = 0.1f;
	final float MAX_FREQ = 10000;
	final float MIN_PULSE_WIDTH = 10.0f;
	float pulseWidth = MIN_PULSE_WIDTH;

	// GUI and Vizualization Stuff.
	float x_pos;
	float y_pos;
	final float size = 200;
	final float dialRadius = 10; // Radius of threshold/frequency dial.
	boolean scope = true; // Used to toggle between "scope" and "blink" modes.
	boolean threshold_selected = false;
	boolean neuron_selected = false;
	int outputSelected = -1; // Which output is selected. -1 implies none.
	// Traces for drawing scope
	LinkedList<Float> fifo_v_input = new LinkedList<Float>();
	LinkedList<Float> fifo_v_membrane = new LinkedList<Float>();
	LinkedList<Float> fifo_v_output = new LinkedList<Float>();
	LinkedList<Float> fifo_v_theta = new LinkedList<Float>();
	final float v_scale = 10; // Voltage scale for scope.
	// Angles for drawing I/O around circle.
	final float IN_ANGLES[][] = { { 315, 135 }, { 270, 270 }, { 225, 45 } };
	final float OUT_ANGLES[][] = { { 135, 135 }, { 90, 90 }, { 45, 45 } };
	int selectedColor;
	int connectedColor;
	int inputColor;
	int outputColor;	
	int scopeBackgroundColor;
	int firingThresholdTraceColor;
	int membraneVoltageTraceColor;

	/**
	 * Neuron constructor.
	 * 
	 * @param p
	 *            PApplet reference to the main Processing "sketch"
	 * @param x
	 *            Initial x coordinate.
	 * @param y
	 *            Initial y coordinate.
	 */
	Neuron(PApplet p, float x, float y) {
		parent = p;
		x_pos = x;
		y_pos = y;
		inputs.add(null);
		inputs.add(null);
		inputs.add(null);

		selectedColor = parent.color(255, 100, 100);
		connectedColor = parent.color(139,153,180);
		inputColor = parent.color(140, 180, 44);		
		outputColor = parent.color(255);		
		scopeBackgroundColor = parent.color(0);
		firingThresholdTraceColor = parent.color(100);
		membraneVoltageTraceColor = parent.color(255, 0, 0);
	}

	/**
	 * Update the Neuron in the current time step.
	 * 
	 * If this is a signal Neuron, the function generator voltage is updated. If
	 * this is a responsive Neuron, the input voltages are summed and put
	 * through the leaky integrator function. Scope storage traces are also
	 * updated.
	 */
	public float[] step() {
		float I_ext = 0;
		if (!signalNeuron) {
			// Sum input voltages.
			for (int i = 0; i < inputs.size(); i++) {
				if (inputs.get(i) != null)
					I_ext += inputs.get(i).getNeuron().get_t_data()[1];
			}
			if (outputPulseTimer > 0)
				outputPulseTimer--;
			else if (t_data[0] >= theta) {
				t_data[0] = 0;
				outputPulseTimer = outputPulseWidth;
			}
			// leaky integration
			t_data[0] = (1 - tau_inv) * t_data[0] + tau_inv * I_ext;

			t_data[1] = outputPulseTimer > 0 ? 5 : 0;
		} else {// function generator
			if (t_data[1] <= 0 && freqTimer < 1) {
				t_data[1] = 5;
				pulseTimer = (parent.frameRate) / pulseWidth;
			} else if (t_data[1] > 0 && pulseTimer < 1) {
				t_data[1] = 0;
				freqTimer = (parent.frameRate) / frequency;
			}
			if (t_data[1] > 0)
				pulseTimer--;
			if (freqTimer > 0)
				freqTimer--;
		}
		fifo_v_input.add(new Float(I_ext));
		if (fifo_v_input.size() > size)
			fifo_v_input.removeFirst();
		fifo_v_membrane.add(new Float(t_data[0]));
		if (fifo_v_membrane.size() > size)
			fifo_v_membrane.removeFirst();
		fifo_v_output.add(new Float(t_data[1]));
		if (fifo_v_output.size() > size)
			fifo_v_output.removeFirst();
		fifo_v_theta.add(new Float(theta));
		if (fifo_v_theta.size() > size)
			fifo_v_theta.removeFirst();
		return t_data;
	}

	public void drawNeuron() {
		// Input connections
		parent.stroke(255);
		for (int i = 0; i < inputs.size(); i++) {
			if (inputs.get(i) != null) {
				float x1 = x_pos + radius()
						* PApplet.sin(PApplet.radians(IN_ANGLES[i][0]));
				float y1 = y_pos + radius()
						* PApplet.cos(PApplet.radians(IN_ANGLES[i][1]));
				float x2 = inputs.get(i).getNeuron().xPos()
						+ radius()
						* PApplet.sin(PApplet.radians(OUT_ANGLES[inputs.get(i)
								.getFromPort()][0]));
				float y2 = inputs.get(i).getNeuron().yPos()
						+ radius()
						* PApplet.cos(PApplet.radians(OUT_ANGLES[inputs.get(i)
								.getFromPort()][1]));
				parent.line(x1, y1, x2, y2);
			}
		}
		parent.pushMatrix();
		parent.translate(x_pos, y_pos);
		parent.ellipseMode(PApplet.CENTER);
		parent.noStroke();
		// Input connectors.
		if (!signalNeuron) {
			parent.fill(inputColor);
			for (int i = 0; i < INPUTS; i++) {
				if (inputs.get(i)==null)
					parent.fill(inputColor);
				else
					parent.fill(connectedColor);
				parent.ellipse(
						size / 2
								* PApplet.sin(PApplet.radians(IN_ANGLES[i][0])),
						size / 2
								* PApplet.cos(PApplet.radians(IN_ANGLES[i][1])),
						size / 6, size / 6);
			}
		}
		// Output Connectors
		for (int i = 0; i < OUTPUTS; i++) {
			if (outputSelected == i)
				parent.fill(selectedColor);
			else
				parent.fill(outputColor);
			parent.ellipse(
					size / 2 * PApplet.sin(PApplet.radians(OUT_ANGLES[i][0])),
					size / 2 * PApplet.cos(PApplet.radians(OUT_ANGLES[i][1])),
					size / 6, size / 6);
		}
		// Scope or blink.
		parent.noStroke();
		if (scope) {
			if (neuron_selected) {
				parent.fill(selectedColor);
				parent.ellipse(0, 0, size + size / 20, size + size / 20);
			}
			parent.fill(scopeBackgroundColor);
			parent.ellipse(0, 0, size, size);
			// scope
			parent.strokeWeight(0.5f);
			if (!signalNeuron) {
				parent.stroke(inputColor);
				drawTrace(fifo_v_input);
				parent.stroke(membraneVoltageTraceColor);
				drawTrace(fifo_v_membrane);
				parent.strokeWeight(0.25f);
				parent.stroke(firingThresholdTraceColor);
				drawTrace(fifo_v_theta);
			}
			parent.strokeWeight(0.5f);
			parent.stroke(outputColor);
			drawTrace(fifo_v_output);
		} else {// blink mode
			if (neuron_selected) {
				parent.fill(selectedColor);
				parent.ellipse(0, 0, size + size / 20, size + size / 20);
			}
			parent.fill(t_data[1] > 0 ? outputColor : 0);
			parent.ellipse(0, 0, size, size);
		}
		// Draw threshold dial.
		parent.noStroke();
		if (threshold_selected)
			parent.fill(selectedColor);
		else
			parent.fill(255);
		parent.ellipse(0, size / 4, dialRadius * 2, dialRadius * 2);
		parent.stroke(0);
		parent.strokeWeight(0.75f);
		parent.pushMatrix();
		parent.translate(0, size / 4);
		if (signalNeuron)
			parent.rotate(frequency * PApplet.PI);
		else
			parent.rotate(theta * PApplet.PI);
		parent.line(-10, 0, 10, 0);
		parent.popMatrix();
		if (signalNeuron) {
			parent.textSize(8);
			parent.fill(255);
			parent.textAlign(PApplet.CENTER);
			parent.text(PApplet.nf(frequency, 1, 1) + " Hz", 0f,
					(size / 4f) * 1.5f);
		}
		parent.popMatrix();
	}

	public void drawTrace(LinkedList<Float> trace) {
		float x = -(size / 2);
		float x_prev = -(size / 2);
		float y_prev = 0;
		for (Float y : trace) {
			float y_prev_within_circle = PApplet.min(
					y_prev * v_scale,
					PApplet.sqrt(PApplet.pow(size / 2, 2)
							- PApplet.pow(x_prev, 2)));
			float y_within_circle = PApplet.min(y * v_scale,
					PApplet.sqrt(PApplet.pow(size / 2, 2) - PApplet.pow(x, 2)));
			parent.line(x_prev, -y_prev_within_circle, x, -y_within_circle);
			y_prev = y;
			x_prev = x;
			x++;
		}
	}

	public float freq() {
		return frequency;
	}

	public void freq(float f) {
		if (f >= MIN_FREQ && f <= MAX_FREQ)
			frequency = f;
		pulseWidth = PApplet.max(MIN_PULSE_WIDTH, frequency);
	}

	public float freqInc() {
		return freqInc;
	}

	public boolean scope() {
		return scope;
	}

	public void scope(boolean s) {
		scope = s;
	}

	public float theta() {
		return theta;
	}

	public void theta(float t) {
		if (t >= 0)
			theta = t;
	}

	public float thetaInc() {
		return theta_inc;
	}

	public float xPos() {
		return x_pos;
	}

	public float yPos() {
		return y_pos;
	}

	public void xPos(float p) {
		x_pos = p;
	}

	void yPos(float p) {
		y_pos = p;
	}

	public float radius() {
		return size / 2;
	}

	public float dialRadius() {
		return dialRadius;
	}

	public int outputSelected() {
		return outputSelected;
	}

	public void selectThreshold(boolean s) {
		threshold_selected = s;
	}

	boolean thresholdSelected() {
		return threshold_selected;
	}

	public void selectNeuron(boolean s) {
		neuron_selected = s;
	}

	public boolean isSelected() {
		return neuron_selected;
	}

	public void markConnected(int output, boolean conn) {
		connectedOutputs[output] = conn;
	}

	public boolean signalNeuron() {
		return signalNeuron;
	}

	public void signalNeuron(boolean b) {
		signalNeuron = b;
		if (signalNeuron) {
			inputs.set(0, null);
			inputs.set(1, null);
			inputs.set(2, null);
		}
	}

	/**
	 * Check if mouse coordinates are over Neuron inputs. If the mouse if over
	 * this Neuron and the parameter Neuron has an output selected,then try to
	 * make a connection.
	 * 
	 * @param n
	 *            Neuron (may have an output selected)
	 * @param mx
	 *            mouseX
	 * @param my
	 *            mouseY
	 */
	public boolean selectIn(Neuron n, float mx, float my) {
		float r = ((200 / 6) / 2);
		float x, y;
		// check inputs
		for (int i = 0; i < INPUTS; i++) {
			if (signalNeuron)
				return false;
			x = x_pos + radius()
					* PApplet.sin(PApplet.radians(IN_ANGLES[i][0]));
			y = y_pos + radius()
					* PApplet.cos(PApplet.radians(IN_ANGLES[i][1]));
			if (PApplet.sqrt(PApplet.pow((mx) - x, 2)
					+ PApplet.pow((my) - y, 2)) <= r) {
				if (n.outputSelected() >= 0) {
					return connect(i, new Connection(n, n.outputSelected()));
				} else {
					if (inputs.get(i) != null) {
						inputs.get(i)
								.getNeuron()
								.markConnected(inputs.get(i).getFromPort(),
										false);
						inputs.set(i, null);// disconnect input
						return true;
					}
				}
			}
		}
		return false;
	}

	/**
	 * Check if mouse coordinates are over Neuron outputs. If the mouse is over
	 * one of this Neuron's outputs that is not already selected or connected,
	 * then the output is selected. If the mouse is over one of this Neuron's
	 * outputs that is already selected, then de-select it.
	 * 
	 * @param mx
	 *            mouseX
	 * @param my
	 *            mouseY
	 */
	public boolean selectOut(float mx, float my) {
		float r = ((size / 6) / 2);
		float x, y;
		// check outputs
		for (int i = 0; i < OUTPUTS; i++) {
			x = x_pos + radius()
					* PApplet.sin(PApplet.radians(OUT_ANGLES[i][0]));
			y = y_pos + radius()
					* PApplet.cos(PApplet.radians(OUT_ANGLES[i][1]));
			if (PApplet.sqrt(PApplet.pow(mx - x, 2)
					+ PApplet.pow(my - y, 2)) <= r) {
				// not selected or connected, selecting
				if (outputSelected != i && connectedOutputs[i] == false) {
					outputSelected = i;
					return true;
				} else {// already selected, de-selecting
					outputSelected = -1;
					return false;
				}
			}
		}
		return false;
	}

	public void clearSelectedOutputs() {
		outputSelected = -1;
	}

	public float[] get_t_data() {
		return t_data;
	}

	/**
	 * Try to attach a Connection object to input i. If the input is already
	 * connected or this Neuron is in signal mode, then the connection will fail
	 * 
	 * @param i
	 *            index of input
	 * @param conn
	 *            Connection object
	 */
	public boolean connect(int i, Connection conn) {
		if (inputs.get(i) == null && !signalNeuron) {
			inputs.set(i, conn);
			conn.getNeuron().markConnected(conn.getFromPort(), true);
			return true;
		}
		return false;
	}
}

/**
 * Connections between Neurons are instances of the Connection class
 */
class Connection {
	Neuron neuron;
	int neuronOutPort;

	/**
	 * @param n
	 *            The "from" Neuron
	 * @param p
	 *            The specific output port from n (used from drawing
	 *            connections)
	 */
	Connection(Neuron n, int p) {
		neuron = n;
		neuronOutPort = p;
	}

	public Neuron getNeuron() {
		return neuron;
	}

	public int getFromPort() {
		return neuronOutPort;
	}
}
