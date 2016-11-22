json.extract! transaction, :id, :user, :product, :payment_details, :delivery_address, :stripe, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)