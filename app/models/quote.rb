class Quote < ApplicationRecord
    belongs_to :board, optional: true
end
