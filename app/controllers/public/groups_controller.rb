class Public::GroupsController < ApplicationController
  
  before_action :authenticate_customer!
  before_action :ensure_correct_customer, only: [:edit, :update]

  def new
    @group = Group.new
  end

  def index
    @anime = Anime.new
    @groups = Group.all
  end

  def show
    @anime = Anime.new
    @group = Group.find(params[:id])
  end
  
  def create
    @group = Group.new(group_params)
    @group.owner_id = current_customer.id
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path
    else
      render "edit"
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :introduction, :image)
  end

  def ensure_correct_customer
    @group = Group.find(params[:id])
    unless @group.owner_id == current_customer.id
      redirect_to groups_path
    end
  end
  
end
