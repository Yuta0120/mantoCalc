class MantosController < ApplicationController

  def show
    @user = User.find(current_user.id)
    # if Manto.find(current_user.id).present?
    #   @mantos = Manto.find(current_user.id)
    # else
    #   @mantos = Manto.create(user_id: current_user.id)
    # end
    @mantos = Manto.find_or_create_by(user_id: current_user.id)

  end

  # def update
  #   mantos = Manto.find(params[:id])
  #     if mantos.user_id == current_user.id
  #        mantos.update(mantos_params(mantos))
  #        redirect_to action: :show
  #     end
  # end

  def update
    @mantos = Manto.find(params[:id])
      @mantos.mantos = @mantos.mantos + mantos_params
      @mantos.save
    @eart_money = Manto.find(params[:id])
      @eart_money.eart_money = @eart_money.eart_money + eart_money_params
      @eart_money.save

      redirect_to action: :show
    end

  # def update
  #   @mantos = Manto.find(current_user.id[:manto]) + mantos_params
  # end

  private
  # def mantos_params(old_mantos)
   
  #   mantos = old_mantos.mantos + params.require(:manto).permit(:manto).values.first.to_i
  #   eart_money = old_mantos.eart_money + params.require(:manto).permit(:eart_money).values.first.to_i
  #   return {mantos: mantos, eart_money: eart_money}
  # end

  def mantos_params
    a = params.require(:manto).permit(:manto)
    return a[:manto].to_i
  end
  def eart_money_params
    a = params.require(:manto).permit(:eart_money)
    return a[:eart_money].to_i
  end
end