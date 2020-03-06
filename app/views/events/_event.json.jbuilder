json.extract! event, :id, :supplier_name, :rut, :number_invoice, :purcharse_of_order, :date, :chechk_in, :quantity_of_code, :net_price, :created_at, :updated_at

json.set! :editable, event.editable?

json.url event_url(event, format: :json)
