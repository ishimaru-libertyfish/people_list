class Member < ApplicationRecord

    validates :name, presence: true, length: { in: 1..20 }, uniqueness: true
    validates :height, presence: true
    validates :weight, presence: true

    validate :must_be_1_height
    validate :must_be_1_weight

private

    def must_be_1_height
      if height.present? && height < 1
        errors.add(:height, "Must be 1 or greater")
      end
    end

    def must_be_1_weight
      if weight.present? && weight < 1
        errors.add(:weight, "Must be 1 or greater")
      end
    end
end
