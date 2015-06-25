class Browet::PaginatedCollection < ActiveResource::Collection
  attr_accessor :paginatable_array

  def initialize(parsed = {})
    setup_paginatable_array(parsed)
  end

  # Retrieve response headers and instantiate a paginatable array
  def setup_paginatable_array(parsed)
    @elements ||= begin
      options = {
        limit: parsed['limit'].try(:to_i),
        offset: parsed['offset'].try(:to_i),
        total_count: parsed['total_count'].try(:to_i)
      }

      Kaminari::PaginatableArray.new(parsed['collection'], options)
    end
  end

  private

  # Delegate missing methods to our `paginatable_array` first,
  # Kaminari might know how to respond to them
  # E.g. current_page, total_count, etc.
  def method_missing(method, *args, &block)
    if paginatable_array.respond_to?(method)
      paginatable_array.send(method)
    else
      super
    end
  end
end