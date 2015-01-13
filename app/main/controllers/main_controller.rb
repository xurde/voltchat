class MainController < Volt::ModelController

  def index
    # Add code for when the index view is loaded
    #self._current_text = store._messages
    store._rooms.then do |results|
      puts "DEBUG :: Listing (#{store._rooms.size}) rooms"
    end

  end

  def about
    # Add code for when the about view is loaded
  end

  def create_room
    new_room = { name: page._new_room._name }
    puts "DEBUG :: Creating Room -> #{new_room.inspect}"
    store._rooms.append(new_room).then do
      room = store._rooms.last
      puts "DEBUG :: Lazingly created Room(#{room._id}) --> #{room.state}"
      puts "DEBUG :: Redirecting to Room(#{room._id})"
      go "/rooms/#{room._id}"
    end
    page._new_room = {}
    # store._rooms.last.then do |result|
    #   puts "DEBUG :: Redirecting to Room(#{result._id}) -> #{result.state}"
    #   go "/rooms/#{result._id}"
    # end
  end

  private
    # the main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._controller and params._action values.
    def main_path
      params._controller.or('main') + "/" + params._action.or('index')
    end
end
