class RequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i(index show)
   def index
      @requests=Request.all
    end
    def show
      @request=Request.find(params[:id])
    end
    def new
      @request=Request.new
    end
    def create
        request= Request.create(request_params.merge(user:current_user))
        Detail.create(user:current_user,request:request,work:"対人戦の基礎指導")
        redirect_to request_path(request)
    end
    
    private

    def request_params
        params.require(:request).permit(:title, :price, :content, :genre)
    end
  end
  