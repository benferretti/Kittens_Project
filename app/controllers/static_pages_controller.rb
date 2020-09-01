class StaticPagesController < ApplicationController
  def index
    @juliet = User.find(1)
    @julien = User.find(2)
    @benjamin = User.find(3)
    @amaury = User.find(4)
    @benoit = User.find(5)
  end
end
