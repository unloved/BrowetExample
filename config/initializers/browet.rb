Browet.options.browet_domain  = 'browet.local:3000'
Browet.options.client_domain  = 'unloved'
Browet.options.client_token   = '7eXtykEQONdl1zwUVAHdHQ'
Browet.options.api_version    = '2'
Browet.options.cached_options = {
  enabled:                 true,
  ttl:                     604800,
  ttl_randomization:       false,
  ttl_randomization_scale: 1..2,
  collection_synchronize:  false,
  collection_arguments: [:all]
  # logger:  The logger to which CachedResource messages should be written. Default: The Rails.logger if available, or an ActiveSupport::BufferedLogger
  # cache The cache store that CacheResource should use. Default: The Rails.cache if available, or an ActiveSupport::Cache::MemoryStore
}