raw_config = File.read("#{Rails.root}/config/alchemy.yml")
yaml       = YAML.load(raw_config)[Rails.env].symbolize_keys

ALCHEMY_API_KEY = yaml[:api_key]
AlchemyAPI.key  = yaml[:api_key]
