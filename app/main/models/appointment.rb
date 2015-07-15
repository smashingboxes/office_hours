class Appointment < Volt::Model
  own_by_user
  field :attendee, String
  field :date, String
  field :start_time, String
  field :end_time, String

  def useful_start_time
    start_time.gsub(":", "").to_i
  end

end
