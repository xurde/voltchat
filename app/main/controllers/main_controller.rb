class MainController < ModelController

  def index
    # Add code for when the index view is loaded
    #self._current_text = store._messages
  end

  def about
    # Add code for when the about view is loaded
  end

  def add_text
    Volt.logger.info("Receiving message: #{self._new_message}")
    nickname = local_store._nickname || '(Anonym)'
    new_message = Hash.new
    new_message[:_text] = self._new_message._text
    new_message[:_nickname] = nickname
    store._messages << new_message
    self._new_message = {}
  end

  def set_nickname
    Volt.logger.info("Setting nickname to: #{self._user._nickname}")
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
