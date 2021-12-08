class WelcomeController < ApplicationController
  skip_bafore_action :authenticate

  def index
  end
end
