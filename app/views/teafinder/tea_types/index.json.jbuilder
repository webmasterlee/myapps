json.array!(@teafinder_tea_types) do |teafinder_tea_type|
  json.extract! teafinder_tea_type, :id, :type_name
  json.url teafinder_tea_type_url(teafinder_tea_type, format: :json)
end
