require 'sinatra'
require 'uuid'

disable :show_exceptions

get '/' do
  uuid.generate(:compact)
end

def uuid
  @uuid ||= UUID.new
end
