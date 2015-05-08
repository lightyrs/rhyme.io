class AylienClient

  def initialize
    @client = AylienTextApi::Client.new(
      app_id: AYLIEN_APPLICATION_ID,
      app_key: AYLIEN_APPLICATION_KEY
    )
  end

  def entities_from_url(url)
    @client.entities(url, url: url)
  end

  def entities_from_text(text)
    @client.entities(text, text: text)
  end

  def concepts_from_url(url)
    @client.concepts(url, url: url)
  end

  def concepts_from_text(text)
    @client.concepts(text, text: text)
  end
end
