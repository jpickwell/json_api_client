module JsonApiClient

  module Pagination

    class Paginator < BasePaginator

      def total_pages
        if links['last']
          last_params = params_for_uri(links['last'])
          last_params.fetch('page') do
            current_page
          end.to_i
        else
          current_page
        end
      end

      # this number may be off
      def total_entries
        per_page * total_pages
      end
      alias_method :total_count, :total_entries

      def offset
        per_page * (current_page - 1)
      end

      def per_page
        params.fetch('per_page') do
          result_set.length
        end.to_i
      end

      alias limit_value per_page

      def current_page
        params.fetch('page', 1).to_i
      end

      def out_of_bounds?
        current_page > total_pages
      end

      def previous_page
        current_page > 1 ? (current_page - 1) : nil
      end

      def next_page
        current_page < total_pages ? (current_page + 1) : nil
      end

    end

  end

end
