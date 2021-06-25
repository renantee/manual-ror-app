class PasswordCheck
  include ActiveModel::Model

  attr_accessor :string

  validates :string, length: { minimum: 8 }
  validates :string, format: { with: /.*\W.*/, message: "must contain nonword chars" }
  validates :string, format: { with: /.*[A-Z].*/, message: "must contain uppercase letters" }
  validates :string, format: { with: /.*[a-z].*/, message: "must contain lowercase letters" }
  validates :string, format: { with: /.*[0-9].*/, message: "must contain digits" }
end
