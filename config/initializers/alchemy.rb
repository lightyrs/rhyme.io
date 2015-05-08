raw_config = File.read("#{Rails.root}/config/alchemy.yml")
yaml       = YAML.load(raw_config)[Rails.env].symbolize_keys

AlchemyAPI.key = yaml[:api_key]
