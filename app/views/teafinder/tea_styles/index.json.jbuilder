json.array!(@teafinder_tea_styles) do |teafinder_tea_style|
  json.extract! teafinder_tea_style, :id, :style
  json.url teafinder_tea_style_url(teafinder_tea_style, format: :json)
end
