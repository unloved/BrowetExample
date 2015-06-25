require 'active_resource'
module Browet
  class Base < ActiveResource::Base
    # self.site = "http://unlovedru.browet.com/api/v1"
    self.site = "http://localhost:3000/api"
    headers['X-Token'] = '2889'
  end
end