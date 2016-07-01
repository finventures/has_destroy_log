module HasDestroyLog
  extend ActiveSupport::Concern

  included do
  end

  class_methods do
    def has_destroy_log(**options)
      if paper_trail_enabled_for_model?
        return
      end

      has_paper_trail :on => [:destroy], **options
    end
  end
end

ActiveRecord::Base.public_send :include, HasDestroyLog
