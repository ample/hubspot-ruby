module Hubspot
  #
  # HubSpot Topics API
  #
  class BlogAuthors
    AUTHORS_PATH = "/blogs/v3/blog-authors"

    class << self
      # Lists the authors
      # {https://developers.hubspot.com/docs/methods/blog/v3/list-blog-authors}
      # @return [Hubspot::BlogAuthors] array of authors
      def list
        response = Hubspot::Connection.get_json(AUTHORS_PATH, {})
        response['objects'].map { |t| new(t) }
      end
    end

    attr_reader :properties

    def initialize(response_hash)
      @properties = response_hash #no need to parse anything, we have properties
    end

    def [](property)
      @properties[property]
    end
  end
end
