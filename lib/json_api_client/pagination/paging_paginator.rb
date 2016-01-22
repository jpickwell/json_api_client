module JsonApiClient

  module Pagination

    class PagingPaginator < BasePaginator

      def number
        params.fetch('page[number]', 1).to_i
      end

      def size
        params.fetch('page[size]') do
          result_set.length
        end.to_i
      end

    end

  end

end
