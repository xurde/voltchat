class Room < Volt::Model

  field :_name, String

  validate :_name, presence: true, length: 5

end
