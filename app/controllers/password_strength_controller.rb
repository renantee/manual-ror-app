class PasswordStrengthController < ApplicationController
  def index; end

  def new
    @password = PasswordCheck.new
  end

  def create
    @password = PasswordCheck.new(string: params[:string])
    if @password.valid?
      flash.now[:notice] = "That is a strong password."
    else
      flash.now[:alert] = "That is a weak password."
    end
    render :new
  end
end
