class Appointment
  
  attr_accessor :name, :doctor, :patient
  
  @@all = []
  
  def initialize(doctor, patient, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end