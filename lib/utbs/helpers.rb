module Utbs
  module Helpers
      def utbs_links
        @utbs ||= Utbs::Client.new(request.host, request.path)
        @utbs.get_links
      end
  end
end

ActionView::Base.send :include, Utbs::Helpers
