WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
    namespace :games do
      subscribe :create_question, :to => GamesController, :with_method => :create_question
      subscribe :create_associated_with_it, :to => GamesController, :with_method => :create_associated_with_it
    end
  # The above will handle an event triggered on the client like `product.new`.
end
