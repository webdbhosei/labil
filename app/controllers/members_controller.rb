class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    confirm_registered_member()
    only_admin()
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
    confirm_registered_member()
  end

  # GET /members/new
  def new
    if Member.exists?(user_id: current_user.id)
      redirect_to :root, alert: "already registered in member!"
    end
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
    confirm_registered_member()
    if user_signed_in? && !(@member.user_id == current_user.id || current_user.id == 1)
      redirect_to :root
    end
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @member.user_id = current_user.id

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name)
    end
end
