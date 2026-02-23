class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :reactable, polymorphic: true

  enum kind: { like: 0, dislike: 1 }
end
