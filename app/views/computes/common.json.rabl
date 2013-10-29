object @compute

node(:id) {|o| o.id.to_s}
attribute :display
attribute :name
attribute :num
attribute :image
attribute :flavor
attribute :keypair
attribute :groups
attribute :region

attribute :state
attribute :public_dns
attribute :public_ip
attribute :private_dns
attribute :private_ip
attribute :availability_zone
attribute :tags

child :environment => :environment do
  node(:id) {|o| o.id.to_s}
  attribute :name
end
child :balancer => :balancer do
  node(:id) {|o| o.id.to_s}
  attribute :name
end
child :organization => :organization do
  node(:id) {|o| o.id.to_s}
  attribute :name
end