class Public::AnimeCommentsController < ApplicationController

  def create
    anime = Anime.find(params[:anime_id])
    @comment = current_customer.anime_comments.new(anime_comment_params)
    @comment.anime_id = anime.id
    @comment.save
     redirect_to anime_path(anime)
  end

  def destroy
    @comment = AnimeComment.find_by(id: params[:id], anime_id: params[:anime_id])
    @comment.destroy
  end
  
  private

  def anime_comment_params
    params.require(:anime_comment).permit(:comment)
  end

end




