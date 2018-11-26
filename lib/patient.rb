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
    Appointment.collect {|appointment| appointment.patients}
  end
  
  def doctors
    Appointment.collect {|appointment| appointment.doctors}
  end
  
  
end