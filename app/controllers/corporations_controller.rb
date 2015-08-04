class CorporationsController < ApplicationController

  def index
    @corporations = Corporation.all
  end

  def new
    @corporation = Corporation.new
  end

  def create
    @corporation = Corporation.new(corporation_params)
    if @corporation.save
      redirect_to corporations_path, notice: 'New Corporation created successfully'
    else
      render :new
    end
  end

  private
  def corporation_params
    params.require(:corporation).permit(:corporation_name, :parent_id)
  end

end
