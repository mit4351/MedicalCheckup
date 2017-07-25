json.extract! hospital, :id, :number, :name, :dayoftheweek, :tel, :zipcode, :address, :jcbflg, :remarks, :deleteflg, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)