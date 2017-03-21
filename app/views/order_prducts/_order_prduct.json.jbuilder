json.extract! order_prduct, :id, :quantity, :notes, :product_id, :order_id, :created_at, :updated_at
json.url order_prduct_url(order_prduct, format: :json)
