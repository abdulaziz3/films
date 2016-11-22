class CommentsController < ApplicationController
	before_action :authorise
	
	def create
		@movie = Movie.find params[:movie_id]
		@comment = @movie.comments.new(comment_params)
		@comment.user_id = @current_user.id
		@comment.save
		
		respond_to do |format|
			format.html{redirect_to @movie}
		end 
	end 
	
	private
	def comment_params 
		params.require(:comment).permit(:content, :movie_id, :user_id, :stars)
	end
end
