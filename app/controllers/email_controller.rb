class EmailController < ApplicationController
  def index
    @emails=Email.all
  end

  def new
  end

  def create
    @email = Email.new(Object: Faker::Book.title, Body: Faker::Lorem.sentence, read: false)
   
    if @email.save
      flash[:notice] = "L'email a été crée"
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
      
    else
      flash[:notice] = "Merci de recommencer svp"
      redirect_to root_path
     
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
    respond_to do |format|
    format.html { redirect_to root_path }
    format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
    format.html { redirect_to root_path }
    format.js { }
  end
  end

  def update
    @email = Email.find(params[:id])
    @email.update(read: false)

    respond_to do |format|
    format.html { redirect_to root_path}
    format.js {}
  end
  end

  
end

