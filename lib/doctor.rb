class Doctor

    attr_reader :name, :patient, :appointment
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    #The Doctor class needs an instance method, #appointments, that iterates through 
    #all Appointments and finds those belonging to this doctor.

    def appointments
        Appointment.all.select{|appointment|appointment.doctor == self}
    end 

    #The Doctor class needs an instance method, #new_appointment, that takes 
    #in a an instance of the Patient class and a date, and creates a 
    #new Appointment. That Appointment should know that it belongs to the doctor

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    #The Doctor class needs an instance method, #patients, that iterates over 
    #that doctor's Appointments and collects the patient that belongs to each 
    #Appointments.

    def patients
        self.appointments.map do |appointment|
        appointment.patients
        end
    end
end 