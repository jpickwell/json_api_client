module JsonApiClient

  module Pagination

    class BasePaginator

      attr_reader :params, :result_set, :links

      def initialize(result_set, data)
        @params = params_for_uri(result_set.uri)
        @result_set = result_set
        @links = data['links']
      end

      def first
        result_set.links.fetch_link('first')
      end

      def last
        result_set.links.fetch_link('last')
      end

      def prev
        result_set.links.fetch_link('prev')
      end

      def next
        result_set.links.fetch_link('next')
      end

      protected

      def params_for_uri(uri)
        return {} unless uri

        uri = Addressable::URI.parse(uri)
        uri.query_values || {}
      end

    end

  end

end
