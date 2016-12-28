# Transformation Controller
class TransformationsController < ApplicationController
  def new; end

  def create
    render plain: params[:transformation].inspect
  end
end
