class Patient 

    attr_reader :name, :appointment, :doctor

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all
        @@all
    end

    #he Patient class needs an instance method, #new_appointment, that takes 
    #in an argument of a doctor and a date and creates a new Appointment. 
    #The Appointment should know that it belongs to the patient.

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    #The Patient class needs an instance method, #appointments, that iterates 
    #through the Appointments array and returns Appointments that belong to 
    #the patient.

    def appointments 
        Appointment.all.select{|appointment|appointment.patient == self}
    end 

    #The Patient class needs an instance method, #doctors, that iterates over 
    #that patient's Appointments and collects the doctor that belongs to each 
    #Appointment.
    def doctors
        self.appointments.map do |appointment| 
            appointment.doctor
        end
    end 
end

end 