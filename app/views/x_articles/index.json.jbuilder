json.array!(@x_articles) do |x_article|
  json.extract! x_article, :id, :title
  json.url x_article_url(x_article, format: :json)
end
