class GroupsController < ApplicationController
  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @group = Group.find(params[:id])
    @operations = @group.operations
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end

  private

  def group_params
    p params
    params.require(:group).permit(:name, :icon)
  end
end
