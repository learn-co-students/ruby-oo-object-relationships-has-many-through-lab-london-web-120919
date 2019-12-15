class Patient

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, patient = self, date)
        Appointment.new(@doctor = doctor, @patient = patient, @date = date)
    end

    def appointments
        Appointment.all.select { |appt| appt.patient == self }
    end

    def doctors
        self.appointments.map { |appt| appt.doctor }
    end

end