json.extract! notification, :id, :email_on_created, :eamil_on_delivery, :email_of_invoice, :created_at, :updated_at
json.url notification_url(notification, format: :json)
