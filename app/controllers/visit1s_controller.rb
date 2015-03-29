class Visit1sController < ApplicationController

  def create

    @visit = Visit.find(params[:visit_id])

    @visit1 = @visit.comments.create(comment_params)

    redirect_to visit_path(@visit)

  end


  private
  def comment_params

    params.require(:visit1).permit(:icfdt, :dov1, :sex)

  end



end
