json.extract! item_document, :id, :item_id, :name, :created_at, :updated_at
json.url item_document_url(item_document, format: :json)
