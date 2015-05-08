class AlchemyClient

  def entities_from_url(url)
    AlchemyAPI.search(:entity_extraction, url: url)
  end

  def entities_from_text(text)
    AlchemyAPI.search(:entity_extraction, text: text)
  end

  def concepts_from_url(url)
    AlchemyAPI.search(:concept_tagging, url: url)
  end

  def concepts_from_text(text)
    AlchemyAPI.search(:concept_tagging, text: text)
  end
end
