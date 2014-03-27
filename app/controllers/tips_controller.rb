class TipsController < ApplicationController
  include TipHelper

  def index
    @user = current_user
    @tip = @user.tips.new

    @totals = {
      :week => total_for(:week),
      :month => total_for(:month),
      :year => total_for(:year),
      :all => total_for(:all)
    }
  end

  def create 
    @user = User.find(current_user.id)
    @tip = @user.tips.build(tip_params)

    if @tip.save!
      flash[:notice] = "Successfully recorded tip on #{@tip.day} for #{@tip.amount}"
      redirect_to user_tips_url
    end
  end
  #
  # => Helper methods for getting tips from a time beginning
  # Month
  # Week
  #
  protected
  def tips_from_this_week
    Tip.where("day > ?", week_start)
  end
  def tips_from_this_month
    Tip.where("day > ?", month_start)
  end
  def tips_from_this_year
    Tip.where("day > ?", year_start)
  end

  private
  def tip_params
    params.require(:tip).permit(:amount, :day)
  end

  def total_for(time=:all)
    amount = 0
    array = nil
    if time == :week
      array = tips_from_this_week
    elsif time == :month
      array = tips_from_this_month
    elsif time == :year
      array = tips_from_this_year
    else
      array = Tip.all
    end
    
    array.each {|t| amount += t[:amount]}
    amount
  end
end
