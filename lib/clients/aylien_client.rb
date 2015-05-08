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

  def classify_url(url)
    @client.classify(url, url: url)
  end

  def classify_text(text)
    @client.classify(text, text: text)
  end

  def hashtags_from_url(url)
    @client.hashtags(url, url: url)
  end

  def hashtags_from_text(text)
    @client.hashtags(text, text: text)
  end

  def summarize_url(url)
    @client.summarize(url, url: url)
  end

  def summarize_text(text)
    @client.summarize(text, text: text)
  end
end
