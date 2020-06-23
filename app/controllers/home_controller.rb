class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @has_desires = current_user.desires.in_progress.exists?
  end
end
