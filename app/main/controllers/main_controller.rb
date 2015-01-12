class MainController < Volt::ModelController

  def index
    # Add code for when the index view is loaded
    #self._current_text = store._messages
    puts "DEBUG :: listing (#{store._rooms.size}) rooms"
  end

  def about
    # Add code for when the about view is loaded
  end

  def create_room
    new_room = page._new_room
    #new_room = {name: "Room #{store._rooms.size}"}
    store._rooms << new_room
    page._new_room = {}
    go "/rooms/#{new_room._id}"
  end

  private
    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      params._controller.or('main') + "/" + params._action.or('index')
    end
end
