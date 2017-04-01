json.extract! item, :id, :name, :quantity, :original_price, :original_currency, :bought_on, :created_at, :updated_at
json.url item_url(item, format: :json)
