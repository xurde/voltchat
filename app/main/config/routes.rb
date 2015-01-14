# See https://github.com/voltrb/volt#routes for more info on routes

get '/signup', _controller: 'user-templates', _action: 'signup'
get '/login', _controller: 'user-templates', _action: 'login'

get "/rooms/{{__id}}", _controller: 'rooms', _action: 'show'
# The main route, this should be last.  It will match any params not previously matched.
get '/', {}
