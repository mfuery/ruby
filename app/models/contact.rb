# == Schema Information
#
# Table name: contacts
#
#  id            :bigint           not null, primary key
#  email         :string
#  is_subscribed :boolean          default(TRUE), not null
#  name          :string
#
# Indexes
#
#  index_contacts_on_email  (email)
#
class Contact < ApplicationRecord
  has_many :items, class_name: 'Item', foreign_key: 'purchaser_id'
  has_many :gift_card_details, class_name: 'GiftCardDetail', foreign_key: 'recipient_id'

  validates_uniqueness_of :email, :allow_blank => true, :allow_nil => true
  validates :is_subscribed, inclusion: { in: [ true, false ] }
end