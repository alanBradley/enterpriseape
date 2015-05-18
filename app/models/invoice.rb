class Invoice < ActiveRecord::Base
    belongs_to :employee
    # dependent helps migitate any orphen elements in database
    has_many :purchases, dependent: :destroy
end
