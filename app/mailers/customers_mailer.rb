class CustomersMailer < ApplicationMailer
  def new_customer(customer)
    @customer = customer

    mail(to: 'azarov91@mail.ru', subject: 'Новая заявка на звонок!')
  end
end
