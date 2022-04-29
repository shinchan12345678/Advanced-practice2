class SearchsController < ApplicationController
  before_action :authenticate_user!

  def search
    # bindring pry
    @search=params
    if params[:model]=="Users"
      case params[:conditions]
      when "前方一致" then
        @objects=User.where('name like ?',"#{params[:query]}%")
      when "後方一致" then
        @objects=User.where('name like ?',"%#{params[:query]}")
      when "部分一致" then
        @objects=User.where('name like ?',"%#{params[:query]}%")
      when "完全一致" then
        @objects=User.where('name like ?',"#{params[:query]}")
      end
    else
      case params[:conditions]
      when "前方一致" then
        @objects=Book.where('title like ?',"#{params[:query]}%")
      when "後方一致" then
        @objects=Book.where('title like ?',"%#{params[:query]}")
      when "部分一致" then
        @objects=Book.where('title like ?',"%#{params[:query]}%")
      when "完全一致" then
        @objects=Book.where('title like ?',"#{params[:query]}")
      end
    end
    # bindring pry
  end
end
