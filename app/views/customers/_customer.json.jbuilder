json.extract! customer, :id, :name, :email, :password, :ext, :room_no, :type, :created_at, :updated_at
json.url customer_url(customer, format: :json)
