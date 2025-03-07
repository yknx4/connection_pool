unless defined?(ActiveSupport::Notifications)
  class ActiveSupport::Notifications
    class << self
      # Noop implementation of ActiveSupport::Notifications.instrument in case it's not available
      def instrument(name, payload = {})
        yield if block_given?
      end
    end
  end
end
