class User < Volt::Model

  field :_email, String
  field :_password, String

  validate :_email, presence: true

  def self.login_field
    'email'
  end

end
