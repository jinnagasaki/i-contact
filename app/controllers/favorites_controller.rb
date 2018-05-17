class FavoritesController < ApplicationController
  before_action :require_login
 
   def create
     @tubuyaki    = Tubuyaki.find(params[:tubuyaki_id])
     @favorite = current_user.favorites.build(tubuyaki: @tubuyaki)
 
     if @favorite.save
       redirect_to request.referer, notice: "お気に入りに登録しました"
     else
       redirect_to request.referer, alert: "このツイートはお気に入りに登録できません"
    end
   end
   
   def destroy
     @favorite = current_user.favorites.find_by!(tubuyaki_id: params[:tubuyaki_id])
     @favorite.destroy
     redirect_to request.referer, notice: "お気に入りを解除しました"
   end
 end