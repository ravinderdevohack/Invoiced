json.data do 
  json.contact do 
    json.call(
      @contact,
      :name,
      :email,
      :phone_number
      )
  end
end
