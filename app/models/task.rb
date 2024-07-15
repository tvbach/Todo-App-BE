class Task < ApplicationRecord
    validates :title, presence: true
    validates :due_date, presence: true
    validates :priority, presence: true

    enum priority: [:high, :medium, :low]

    scope :active, -> { where(status: true)} # get active task 

    # Example format: "Mon, 15 Jul 2024, 10:35am"
    def format_due_time
        Time.parse(due_date.to_s).strftime("%a, %d %b %Y, %l:%M%P")
    end
end
