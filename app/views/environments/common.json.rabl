object @environment
node(:id) {|o| o.id.to_s}
attribute :name
attribute :protected
attribute :created_at
attribute :updated_at

child :template => :template do
  node(:id){|o| o.id.to_s}
  attribute :name
end

child :organization => :organization do
  node(:id){|o| o.id.to_s}
  attribute :name
end