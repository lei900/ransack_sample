class Machine < ApplicationRecord
  scope :ip_search, -> (q) { where("text(ip) ILIKE '%#{q}%' ") }

  def self.ransackable_scopes(_auth_object = nil)
    [:ip_search]
  end
end
