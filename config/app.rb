Volt.setup do |config|

  # Setup your global app config here.

  # The app name defaults to the folder it is run in.
  # config.app_name = 'contactsdemo'

  # Database config all start with db_ and can be set either in the config
  # file or with an environment variable (DB_NAME for example).

  config.db_driver = 'mongo'
  #config.db_name = (config.app_name + '_' + Volt.env.to_s)
  #config.db_name = 'app31108145'
  config.db_uri = 'mongodb://heroku:fpWrptFHDIpoUc69gbIpfjGf_B_FsyilGO2fFVEPoSpLm20P50pTKRZexpNeC7mIEWOKRQ7Vb1Oh2fKwB4UH5w@dogen.mongohq.com:10005/app31108145'
  config.db_host = 'dogen.mongohq.com'
  config.db_path = ''
  # config.db_user = 'heroku'
  # config.db_password = 'fpWrptFHDIpoUc69gbIpfjGf_B_FsyilGO2fFVEPoSpLm20P50pTKRZexpNeC7mIEWOKRQ7Vb1Oh2fKwB4UH5w'
  config.db_port = 10005

  # Compression options

  # If you are not running behind something like nginx in production, you can
  # have rack deflate all files.
  # config.deflate = true

end
