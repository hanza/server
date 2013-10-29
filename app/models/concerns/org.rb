module Org
  extend ActiveSupport::Concern

  included do
    belongs_to :organization, index: true

    scope :org, ->(name) do
      o = Organization.named(name)
      if o
        where(organization_id: o.id)
      else
      end
    end

    scope :for_org, ->(org) {where(:organization.in =>  [nil, Organization.named(org)])}
  end
end
