import Config

config :pleroma, :instance,
  registrations_open: false,
  federating: true

# config :pleroma, :media_proxy,
#       enabled: true,
#       proxy_opts: [
#             redirect_on_failure: true
#       ],
#       base_url: "https://cache.example.com"

config :pleroma, configurable_from_database: true
