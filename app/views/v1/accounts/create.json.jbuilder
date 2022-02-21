json.data do 
  data.account do
    json.call(
      @account,
      :name,
      :owner_id
      )
  end
end
