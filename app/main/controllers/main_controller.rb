class MainController < ModelController

  def index
    # Add code for when the index view is loaded
    #self._current_text = store._messages
  end

  def about
    # Add code for when the about view is loaded
  end

  def add_text
    store._messages << self._new_text.cur.to_h
    self._new_text = {}
  end

  private
    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      params._controller.or('main') + "/" + params._action.or('index')
    end
end
