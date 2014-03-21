class Api::TipsController < TipsController
  ALLOWED = [:week, :month, :all]
  #before_filter :authenticate_user!
  #
  # => Tips for the week
  #

  def tip_data(output=true)
    time = params[:time]
    if time == 'week'
      output_tip_data tips_from_this_week
    elsif time == 'month'
      output_tip_data tips_from_this_month
    else
      output_tip_data Tip.all
    end
  end

  #
  # => Method to get total made of each time frame
  #
  def total_profit
    time = params[:time]
    if time == 'week'
      output_profit_data tips_from_this_week
    elsif time == 'month'
      output_profit_data tips_from_this_month
    else
      output_profit_data Tip.all
    end  
  end


  private 

  #
  # => Renders out the total made from each timeframe
  # => {"total" : "#"}
  #
  def output_profit_data(record_array)
    result = {total: 0}
    record_array.each do |record|
      record.hash.extract!(:amount).each do |key, amount|
        result[:total] += amount
      end
    end
    render :json => result
  end

  #
  # => Renders out a JSON object with
  # => -Amount []
  # => -Dates []
  #
  def output_tip_data (record_array)
    hash = {:amounts => [], :dates => []}

    # Loop over each Tip object
    record_array.each do |record|

      # Convert to Hash
      opts = record.hash

      # Extract amounts, leaving out the :amount symbol
      opts.extract!(:amount).each do |key, val|
        hash[:amounts] << val
      end

      # Extract amounts, leaving out the :day symbol
      opts.extract!(:day).each do |key, val|
        hash[:dates] << val
      end
    end

    # Render
    render :json => hash, :content_type => "application/json"
  end

end