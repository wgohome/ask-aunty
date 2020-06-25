class PollsController < ApplicationController
  def create
    puts "Hello World"
    @poll = Poll.new(meal: Meal.find(params[:meal]),
                     user: User.find(params[:user]),
                     cuisine: Cuisine.find(params[:cuisine]),
                     score: params[:score])
    @poll.save
    # @meal = Meal.find(params[:meal_id])
    # @cuisine = Cuisine.find(params[:poll][:cuisine])
    # @poll = Poll.new(poll_params)
    # @poll.user = current_user
    # @poll.meal = @meal
    # @poll.cuisine = @cuisine
    # redirect_to setup_path(@meal) if @poll.save
  end

  private

  def poll_params
    params.require(:poll).permit(:score)
  end
end
