# frozen_string_literal: true

class GiftCardAmount < ApplicationRecord
  belongs_to :gift_card_detail
end
