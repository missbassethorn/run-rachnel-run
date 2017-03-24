class Event < ApplicationRecord
  def months_to_go
    time_difference.in_months.to_i
  end

  def days_to_go
    nearest_month = Time.now
    nearest_month = nearest_month + months_to_go.months unless months_to_go == 0
    TimeDifference.between(event_at, nearest_month).in_days.to_i
  end

  def hours_to_go
    time_difference.in_hours.to_i
  end

  private
  def time_difference
    @time_difference ||= TimeDifference.between(event_at, Time.now)
  end
end
