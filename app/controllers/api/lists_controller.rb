class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    user = User.where(id: params[:user_id]).first
    list = user.lists.build(list_params)

    if list.save && list.name
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      list = List.find(params[:id])
      list.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  private
  def list_params
    params.require(:list).permit(:name, :permissions, :user_id)
  end

end
