class AdventuresController < ApplicationController
  before_filter :set_adventure, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @adventures = Adventure.all
    respond_with(@adventures)
  end

  def show
    respond_with(@adventure)
  end

  def new
    @adventure = Adventure.new
    @adventure.dangers.build 
    respond_with(@adventure)
  end

  def edit
  end

  def create
    @adventure = Adventure.new(params[:adventure])
    @adventure.save
    respond_with(@adventure)
  end

  def update
    @adventure.update_attributes(params[:adventure])
    respond_with(@adventure)
  end

  def destroy
    @adventure.destroy
    respond_with(@adventure)
  end

  private
    def set_adventure
      @adventure = Adventure.find(params[:id])
    end
end
