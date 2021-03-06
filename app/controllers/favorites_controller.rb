class FavoritesController < ApplicationController
  def create
    # url=request.url
    # binding.pry
    book=Book.find(params[:book_id])
    favorite=Favorite.new()
    favorite.user_id=current_user.id
    favorite.book_id=book.id
    favorite.save
    @book=Book.find(params[:book_id])
    # redirect_to request.referer
  end

  def destroy
    book=Book.find(params[:book_id])
    favorite=Favorite.find_by(user_id: current_user.id,book_id: book.id)
    favorite.destroy
    @book=Book.find(params[:book_id])
    # redirect_to request.referer
  end
end
