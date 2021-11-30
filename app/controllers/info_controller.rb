class InfoController < ApplicationController
    before_action :admin_user , only: [:edit, :update, :destroy, :new, :create]



def show
    @info = Info.find(params[:id])
end

def new
    @info = Info.new(day:[], content:[])
end

def create
    @info = Info.new(info_params)
    if @info.save
        redirect_to "/"
    else
        redirect_to "/"

    end
end

def edit
    @info = Info.find(params[:id])
end

def update
    @info = Info.find(params[:id])
    if @info.update(info_params_edit)
        redirect_to"/"
    else
        redirect_to "/"

    end

end

def destroy
    info = Info.find(params[:id])
  if info.destroy
    redirect_to "/"
  end
end

private
def info_params
    params.permit(:day, :content)
end

def info_params_edit
    params.require(:info).permit(:day, :content)
  end


      def admin_user
        redirect_to("/") unless current_user.admin?
      end

end
