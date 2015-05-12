json.array!(@aanbieders) do |aanbieder|
  json.extract! aanbieder, :id, :naam, :automerk, :stroom, :prijs
  json.url aanbieder_url(aanbieder, format: :json)
end
