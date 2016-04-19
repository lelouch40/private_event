class UserController < ApplicationController
	layout false
  def index
    @user=User.sorted
  end

  def new
    @user=User.new
  end

     def show
    @user=User.find(params[:id])
    #@user= Attendee.order(" time ASC")
        end
      def create
     @user=User.new(strong_params)
     if @user.save
      flash[:notice] = "Saved"
      redirect_to(:action => "index")
     else
      render("show")
     end
  end
    private
  def strong_params
    params.require(:attendee).permit(:name,:email)
end

end
