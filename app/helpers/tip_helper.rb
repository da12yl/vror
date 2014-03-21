require 'date'
module TipHelper
  NOW = DateTime.now
  
  def week_start
    TipHelper::NOW.beginning_of_week(:sunday).strftime('%F')
  end
  def month_start
    TipHelper::NOW.beginning_of_month.strftime('%F')
  end
  def year_start
    TipHelper::NOW.beginning_of_year.strftime('%F')
  end
end
