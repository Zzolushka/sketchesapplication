class SketchesController < ApplicationController

  def index
    @sketches = Sketch.all
  end

  def show
    @sketch = Sketch.find(params[:id]);
  end

  def new

  end

  def create
    # @sketch = Sketch.new(sketch_params)

    @sketch = current_user.sketches.create(sketch_params)

    @sketch.save
      redirect_to @sketch
  end

  def edit
    @sketch = Sketch.find(params[:id])
  end

  def update
    @sketch = Sketch.find(params[:id])
    if(@sketch.update(sketch_params))
      redirect_to sketch_path
    else
      render 'edit'
    end
  end

  def destroy
    @sketch = Sketch.find(params[:id]);

    @sketch.destroy
     redirect_to sketches_path
  end


  private def sketch_params
    params.require(:sketch).permit(:title, :text)
  end
end
