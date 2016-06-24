json.array!(@m_articles) do |m_article|
  json.extract! m_article, :id
  json.url m_article_url(m_article, format: :json)
end
