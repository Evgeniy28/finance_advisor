class Customer < ApplicationRecord
  validates :name, :phone, presence: true

  after_create :send_notification

  private

  def send_notification
    CustomersMailer.new_customer(self).deliver_now
  end
end
