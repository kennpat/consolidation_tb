class CorporationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @corporations = Corporation.all
  end

  def show
    @corporation = Corporation.find(params[:id])
  end

  def new
    @corporation = Corporation.new
  end

  def create
    @corporation = Corporation.new(corporation_params)
    if @corporation.save
      redirect_to corporation_path(@corporation.id), notice: 'New Corporation created successfully'
    else
      render :new
    end
  end

  def edit
    @corporation = Corporation.find(params[:id])
  end

  def update
    @corporation = Corporation.find(params[:id])

    if @corporation.update(corporation_params)
      redirect_to corporation_path(@corporation.id), notice: 'Corporation updated successfully'
    else
      render :edit
    end
  end

  private
  def corporation_params
    params.require(:corporation).permit(:corporation_name, :parent_id)
  end

end
