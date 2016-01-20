class GamesController < WebsocketRails::BaseController

  def initialize_session

  end

  def create_associated_with_it
    @game = Game.new
    @game.kind = 'AssociatedWithIt'
    @game.save
    refresh
  end

  def create_question
    @game = Game.new
    @game.kind = 'Question'
    @game.save
    refresh
  end

  private

  def refresh
    partial = render_to_string 'application/_index.html.erb', layout: false
    message = {:partial => partial}
    broadcast_message :refresh, message
  end
end
