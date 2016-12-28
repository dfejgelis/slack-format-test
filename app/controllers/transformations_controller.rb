# Transformation Controller
class TransformationsController < ApplicationController
  def index
    @transformations = Transformation.all
  end

  def new; end

  def show
    @transformation = Transformation.find(params[:id])
  end

  def create
    @transformation = Transformation.new(transformation_params)
    @transformation.save

    redirect_to @transformation
  end

  private

  def transformation_params
    params.require(:transformation).permit(:title, :text)
  end
end
