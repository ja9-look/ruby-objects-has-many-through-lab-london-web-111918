class Patient
  
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|patient| patient.patient == self}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
  
  
end