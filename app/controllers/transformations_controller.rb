# Transformation Controller
class TransformationsController < ApplicationController
  def index
    @transformations = Transformation.all
  end

  def new
    @transformation = Transformation.new
  end

  def edit
    @transformation = Transformation.find(params[:id])
  end

  def update
    @transformation = Transformation.find(params[:id])

    if @transformation.update(transformation_params)
      redirect_to @transformation
    else
      render 'edit'
    end
  end

  def show
    @transformation = Transformation.find(params[:id])
  end

  def create
    @transformation = Transformation.new(transformation_params)

    if @transformation.save
      redirect_to @transformation
    else
      render 'new'
    end
  end

  def destroy
    @transformation = Transformation.find(params[:id])
    @transformation.destroy

    redirect_to transformations_path
  end

  private

  def transformation_params
    params.require(:transformation).permit(:title, :text)
  end
end
