class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update]
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(lists_params)
    @list.save

    redirect_to list_path(@list)
  end

  def edit
  end

  def update
    @list.update(lists_params)

    redirect_to list_path(@list)
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
