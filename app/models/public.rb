class Public 

	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming

	attr_accessor :cardholder_name, :card_number, :security_code, :expiry_date, :billing_address, :city, :province, :postal_code, :quantity, :user_id, :deal_id

	def initialize(attributes = {})
	attributes.each do |name, value|
		send("#{name}=", value)
	end
	end

	def persisted?
	false
	end
end
