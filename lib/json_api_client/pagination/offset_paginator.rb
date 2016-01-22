module JsonApiClient

  module Pagination

    class OffsetPaginator < BasePaginator

      def offset
        params.fetch('page[offset]', 0).to_i
      end

      def limit
        params.fetch('page[limit]') do
          result_set.length
        end.to_i
      end

    end

  end

end
