# ReLU (Rectified Linear Unit)

ReLU stands for Rectified Linear Unit. It's a non-linear activation function defined as:

$$f(x) = \max(0, x)$$

In simple terms:

* If the input is positive → return the input.
* If the input is negative or zero → return 0.

## Graph of ReLU:

![ReLU Graph](https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/ReLU_activation_function.svg/600px-RELU_activation_function.svg.png)

* X-axis: Input x
* Y-axis: Output f(x)

## Why Use ReLU?

Advantages:

1. **Computational Simplicity**: Faster to compute than tanh or sigmoid (no exponentials).
2. **Non-linearity**: Allows neural networks to learn complex patterns.
3. **Sparse Activation**: For negative values, output is 0 → encourages sparsity (many inactive neurons).
4. **Avoids Vanishing Gradient Problem**: Unlike sigmoid/tanh, it doesn't squash gradients in the positive range.

However, there is a potential issue:

### Dying ReLU Problem

Sometimes, too many neurons output zero and never recover (especially with large negative weights). This is known as the Dying ReLU Problem.

Once a neuron gets stuck with a negative input, the gradient becomes zero and it stops learning.

Solutions:

* Use Leaky ReLU: f ( x ) = {
	+	x	•	if  x > 0
	+	α x	•	otherwise
	•	    (with α ≈ 0.01   )
* Use Parametric ReLU, ELU, or Swish (other improved activation functions).

## ReLU in Practice (e.g., PyTorch / TensorFlow)

### PyTorch Example:

