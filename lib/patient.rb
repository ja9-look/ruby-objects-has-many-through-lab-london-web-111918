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
    patients.collect {|patient| patient.appointments}
  end
  
  def doctors
    patients.collect {|patient| patient.doctors}
  end
  
  
end