module InvoiceCreator
  TAX_FEE = 0.5

  def self.generate
    "Don't worry! I'll generate the invoice for you at #{TAX_FEE}%"
  end

  def invoice_total
    "I'll return the invoice total"
  end
end
