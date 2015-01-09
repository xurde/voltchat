Volt.setup do |config|

  # Setup your global app config here.

  # The app name defaults to the folder it is run in.
  # config.app_name = 'contactsdemo'

  # Database config all start with db_ and can be set either in the config
  # file or with an environment variable (DB_NAME for example).
  puts "Loading config for Volt environment: #{Volt.env}"

  case Volt.env
  when 'development'
    config.db_driver = 'mongo'
    config.db_host = 'localhost'
    config.db_port = 27017
    config.db_name = (config.app_name + '_' + Volt.env.to_s)
  when 'heroku'
    config.db_driver = 'mongo'
    config.db_uri = 'mongodb://heroku:fpWrptFHDIpoUc69gbIpfjGf_B_FsyilGO2fFVEPoSpLm20P50pTKRZexpNeC7mIEWOKRQ7Vb1Oh2fKwB4UH5w@dogen.mongohq.com:10005/app31108145'
  end

  # Compression options

  # If you are not running behind something like nginx in production, you can
  # have rack deflate all files.
  # config.deflate = true

end
