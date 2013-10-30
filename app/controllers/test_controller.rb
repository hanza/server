class TestController < WebsocketRails::BaseController
  before_filter :incr_count

  def initialize_session
    controller_store[:event_count] = 0
  end

  def connected
    puts "connected: #{message.inspect}"
  end

  def from_client
    puts "from_client: #{message.inspect}"
    send_message 'test.server', {message: "from server", count: get_count}
  end

  private

  def get_count
    controller_store[:event_count]
  end

  def incr_count
    controller_store[:event_count] += 1
  end
end