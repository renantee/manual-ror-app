class Invoice < ApplicationRecord
  include Customer::InvoiceCreator

  def send_invoice_to_customer
    generate_invoice
  end
end
