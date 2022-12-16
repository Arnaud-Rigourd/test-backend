json.array! @listings do |listing|
  json.extract! listing, :id, :mission_type, :date, :price
end
