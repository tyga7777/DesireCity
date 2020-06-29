class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @has_desires = current_user.desires.in_progress.exists?
    @today_tasks = current_user.tasks.today
  end
end