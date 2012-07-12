module <%= class_name %>
  extend ActiveSupport::Concern
<% if options[:extended] -%>

  included do
    # stuff to do at inclusion
  end

  module ClassMethods

  end

  module InstanceMethods
    
  end
<% end -%>
end
