class PoemsController < ApplicationController

  def show
    redirect_to new_poem_path
  end

  def index
    redirect_to new_poem_path
  end

  def new
    # default: render 'new' template
  end

  def create
    redirect_to new_poem_path
  end

  def edit
    redirect_to new_poem_path
  end

  def update
    redirect_to new_poem_path
  end

  def destroy
    redirect_to new_poem_path
  end


end
