json.array!(@n_articles) do |n_article|
  json.extract! n_article, :id, :title, :body
  json.url n_article_url(n_article, format: :json)
end
