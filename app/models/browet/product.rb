module Browet
  class Product < Base
    self.element_name = "products"
    self.collection_parser = Browet::PaginatedCollection
  end
end
