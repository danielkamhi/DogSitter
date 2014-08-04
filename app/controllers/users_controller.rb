class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # UserMailer.password_changed(@user).deliver

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @user = current_user.id
  end

  # GET /users/1
  # GET /users/1.json
  def show
      
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save 
        if @user.sitter?
            format.html { redirect_to new_sitter_path, notice: 'Sitter was successfully created.' }
            format.json { render :show, status: :created, location: new_sitter_path }
         else
            format.html { redirect_to new_dog_path, notice: 'Owner was successfully created.' }
            format.json { render :show, status: :created, location: @user }
         end  
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

    def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:dog_id, :first_name, :last_name, :email, :password, :sitter)
    end
end
