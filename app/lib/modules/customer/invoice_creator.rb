class Customer::InvoiceCreator
  include InvoiceCalculator
  include InvoiceRenderer
  include InvoiceSender

  def generate_invoice
    calculate_items_total # from InvoiceCalculator
    generate_invoice_pdf # from InvoiceRenderer
    send_invoice # from InvoiceSender
  end
end
