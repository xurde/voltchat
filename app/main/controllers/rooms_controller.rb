class RoomsController < Volt::ModelController

  model :page

  def show
    puts "DEBUG :: showing Room(#{params._id})"
    store._rooms.find(_id: params._id).then do |results|
      self.model = results.first
      puts "DEBUG :: Room(#{self.model._id}) found: #{self.model._name}"
      # puts "DEBUG :: searched in (#{store._rooms.size}) rooms"
    end
  end

  def add_message
    nickname = local_store._nickname || '(Anon)'
    new_message = {nickname: nickname, text: page._new_message._text}
    self.page._new_message = {}
    self.model._messages << new_message
  end

  def set_nickname
    local_store._nickname = self._user._nickname
    flash = "Setting nickname to: #{self._user._nickname}"
    self._user._nickname = {}
  end

  private
    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      params._controller.or('main') + "/" + params._action.or('index')
    end

end
