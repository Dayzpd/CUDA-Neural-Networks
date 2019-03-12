
#include "ActivationFunction.h"
#include "FastSigmoid.h"

#include <cstdlib>

namespace neural_network {

  class FastSigmoid : public ActivationFunction
  {
    public:

      FastSigmoid();

      ~FastSigmoid();

      /// <summary>Approximated Sigmoid activation function.</summary>
      /// <param name="x">Represents the aggregated value obtained during
      /// forward propagation (bias + sum(inputs * weights)) for a given neuron
      /// </param name>
      /// <returns>Returns an approximation of the sigmoid function.</returns>
      double calculate(double& x)
      {
        return x / 1 + abs(x);
      }

      /// <summary>Derivative of approximated Sigmoid activation function.
      /// </summary>
      /// <param name="x">Represents the aggregated value obtained during
      /// forward propagation (bias + sum(inputs * weights)) for a given neuron.
      /// </param name>
      /// <returns>Returns derivative of approximated sigmoid.</returns>
      double calculate_deriv(double& x)
      {
        double approx_sigmoid = this->calculate(x);

        return approx_sigmoid * (1 - approx_sigmoid);
      }
  }

}
