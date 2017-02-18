'use strict';

var dict = {
  '__superclass_Control.Inefficient.Polynomial_0':  function() { return dict; },
  '__superclass_Control.Inefficient.Exponential_0': function() { return dict; },
};

function discharge(x) {
  return x(dict);
}

exports.acknowledgePolynomial  = discharge;
exports.acknowledgeExponential = discharge;
