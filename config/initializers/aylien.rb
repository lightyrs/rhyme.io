raw_config = File.read("#{Rails.root}/config/aylien.yml")
yaml       = YAML.load(raw_config)[Rails.env].symbolize_keys

AYLIEN_APPLICATION_ID  = yaml[:application_id]
AYLIEN_APPLICATION_KEY = yaml[:application_key]
