class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_time
    self.appointment_datetime.strftime("%B %-d, %Y at %R")
  end
end
