module JsonApiClient

  module Pagination

    class CursorPaginator < BasePaginator

      def cursor
        params.fetch('page[cursor]')
      end

    end

  end

end
