class CapImage < ActiveRecord::Base
  include ImageSearchDsl

  def increment_like_count
    self.like_count += 1
  end
end
