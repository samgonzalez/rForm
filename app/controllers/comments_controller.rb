class CommentsController < ApplicationController

  def create

    @visit = Visit.find(params[:visit_id])

    @comment = @visit.comments.create(comment_params)

    redirect_to visit_path(@visit)

  end


  private
  def comment_params

    params.require(:comment).permit(:commenter, :body)

  end



end
