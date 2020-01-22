class User < ApplicationRecord
    enum kind: [ :knight, :wizard ]
    validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99 }

    def title
        "#{self.kind} | #{self.nickname} | lv.#{self.level}"
    end
end
