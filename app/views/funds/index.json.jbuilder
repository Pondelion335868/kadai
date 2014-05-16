json.array!(@funds) do |fund|
  json.extract! fund, :id, :name, :apr14, :may14, :jun14, :jul14, :aug14, :sep14, :oct14, :nov14, :dec14, :jan15, :feb15, :mar15
  json.url fund_url(fund, format: :json)
end
