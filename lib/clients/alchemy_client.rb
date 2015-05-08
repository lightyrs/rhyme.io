class AlchemyClient

  def extract_companies_and_people(sample, sample_type:)
    extraction_method = sample_type == :url ? :entities_from_url : :entities_from_text

    entities = send(extraction_method, sample).select do |entity|
      ["Company", "Person"].include? entity["type"]
    end

    entities = entities.group_by { |entity| entity["type"].downcase }

    company_names = entities["company"].map { |entity| entity["text"] }

    entities["person"].reject! { |entity| company_names.include? entity["text"] }

    entities
  end

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
