module HasDestroyLog
  extend ActiveSupport::Concern

  included do
  end

  class_methods do
    def has_destroy_log(**options)
      return if PaperTrail.request.enabled_for_model?(self)

      has_paper_trail on: [:destroy], **options
    end
  end
end

ActiveRecord::Base.public_send :include, HasDestroyLog
