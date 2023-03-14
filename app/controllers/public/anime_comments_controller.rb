class Public::AnimeCommentsController < ApplicationController

  def create
    anime = Anime.find(params[:anime_id])
    comment = current_customer.anime_comments.new(anime_comment_params)
    comment.anime_id = anime.id
    comment.save
    redirect_to anime_path(anime)
  end

  def destroy
    AnimeComment.find(params[:id]).destroy
    redirect_to anime_path(params[:anime_id])
  end
  
  private

  def anime_params
    params.require(:anime_comment).permit(:comment)
  end

end


