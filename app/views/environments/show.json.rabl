object @environment
extends 'environments/common'
child :computes => :computes do
  extends 'computes/show'
end