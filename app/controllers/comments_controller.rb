class CommentsController < ApplicationController
    def create
        @pic = Pic.find(params[:comment][:pic_id])
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        respond_to do |format|
        if @comment.save
        format.html { redirect_to pic_path(@pic.id), notice:
        'Comment was successfully created.' }
        else
        format.html { redirect_to pic_path(@pic.id), notice:
        'Comment was not created.' }
        end
    end
    end
    private
    def comment_params
    params.require(:comment).permit(:content, :pic_id)
    end
        
end
