class Notifier < ActionMailer::Base
  default from: "Sanjeev Kumar <sanj@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def received(order)
    @order = order
    mail to: order.email, subject: 'Asian Online Shopping Order Confirmation'
  end


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
def shipped(order)
  @order = order

  mail to: order.email, subject: 'Asian Online Shopping Order Shipped'
end
end
