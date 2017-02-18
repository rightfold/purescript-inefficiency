-- | Constraints for inefficient functions.
module Control.Inefficient
  ( class Polynomial
  , class Exponential

  , acknowledgePolynomial
  , acknowledgeExponential
  ) where

-- | Constraint for polynomial time functions.
class Polynomial

-- | Constraint for exponential time functions. The superclass constraint may
-- | be counterintuitive; it should be read as "acknowledging `Exponential`
-- | implies acknowledging `Polynomial`".
class Polynomial <= Exponential

-- | Explicitly acknowledge the polynomial running time of a function. This
-- | warns maintainers that they should be careful with passing large inputs.
foreign import acknowledgePolynomial :: ∀ a. (Polynomial => a) -> a

-- | Explicitly acknowledge the exponential running time of a function. This
-- | warns maintainers that they should be careful with passing large inputs.
foreign import acknowledgeExponential :: ∀ a. (Exponential => a) -> a
