class CommentsController < ApplicationController

  def create
    @sketch = Sketch.find(params[:sketch_id])
    @comment = @sketch.comments.create(comment_params)

    redirect_to sketch_path(@sketch)
  end

  private def comment_params
    params.require(:comment).permit(:username,:text)
  end
end
