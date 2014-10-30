class RoomsController < Volt::ModelController

  def show
    store._rooms.find(_id: params._id).then do |results|
      self.model = results.first
    end
  end

  def add_message
    #Volt.logger.info("Receiving message: #{self._new_message}")
    store._rooms.find(_id: params._id).then do |results|
      self.model = results.first
    end
    nickname = local_store._nickname || '(Anon)'
    new_message = {nickname: nickname, text: self._new_message._text}
    self.model._messages << new_message
    self._new_message = {}
    go "/rooms/#{self.model._id}"
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
