module JsonApiClient

  module Pagination

    autoload :BasePaginator,   'json_api_client/pagination/base_paginator'
    autoload :Paginator,       'json_api_client/pagination/paginator'
    autoload :PagingPaginator, 'json_api_client/pagination/paging_paginator'
    autoload :OffsetPaginator, 'json_api_client/pagination/offset_paginator'
    autoload :CursorPaginator, 'json_api_client/pagination/cursor_paginator'

  end

end
