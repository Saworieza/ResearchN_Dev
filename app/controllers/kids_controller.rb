class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @kids = Kid.all
    respond_with(@kids)
    #@events = Event.all
  end 

  def show
    respond_with(@kid)
  end

  def new
    @kid = Kid.new
    respond_with(@kid)
  end

  def edit
  end

  def create
    @kid = Kid.new(kid_params)
    @kid.save
    respond_with(@kid)
  end

  def update
    @kid.update(kid_params)
    respond_with(@kid)
  end

  def destroy
    @kid.destroy
    respond_with(@kid)
  end

  private
    def set_kid
      @kid = Kid.find(params[:id])
    end

    def kid_params
      params[:kid]
    end
end
