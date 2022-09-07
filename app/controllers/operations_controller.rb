class OperationsController < ApplicationController
  def new
    @operation = Operation.new
  end

  def create
    @operation = Operation.new(operation_params.except(:group_ids))
    @groups = Group.where(id: operation_params[:group_ids])
    return if @groups.first.nil?

    if @operation.save
      @groups.each do |group|
        group.operations << @operation
      end
      redirect_to groups_path
    else
      render :new
    end
  end

  private

  def operation_params
    params.require(:operation).permit(:name, :amount, group_ids: []).merge(user_id: current_user.id)
  end
end
