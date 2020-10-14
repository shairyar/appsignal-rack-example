require 'appsignal'                           # Load AppSignal

Appsignal.config = Appsignal::Config.new(
    File.expand_path('../', __FILE__),          # Application root path
    log: 'log/appsignal.log'
)

Appsignal.start                               # Start the AppSignal integration
Appsignal.start_logger                        # Start logger
use Appsignal::Rack::GenericInstrumentation
