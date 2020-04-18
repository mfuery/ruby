class PaymentIntent < ApplicationRecord
  validate :square_xor_stripe_id_exists
  validate :square_location_id_exists

  def square_xor_stripe_id_exists
    unless stripe_id.present? ^ square_payment_id.present?
      if stripe_id.present? && square_payment_id.present?
        errors.add(:stripe_id, 'cannot contain both stripe_id and square_payment_id')
        errors.add(:square_payment_id, 'cannot contain both stripe_id and square_payment_id')
      else
        errors.add(:stripe_id, 'must contain either stripe_id or square_payment_id')
        errors.add(:square_payment_id, 'must contain either stripe_id or square_payment_id')
      end
    end
  end

  def square_location_id_exists
    if square_payment_id.present?
      errors.add(:square_location_id, 'must exist if square_payment_id exists') unless square_location_id.present?
    end
  end
end
