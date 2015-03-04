json.array!(@teafinder_teas) do |teafinder_tea|
  json.extract! teafinder_tea, :id, :name, :display, :tea_type_id, :tea_style_id
  json.url teafinder_tea_url(teafinder_tea, format: :json)
end
