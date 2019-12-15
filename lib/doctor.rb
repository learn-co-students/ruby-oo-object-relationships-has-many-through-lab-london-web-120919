require "pry"

class Doctor

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appt| appt.doctor == self }
    end

    def new_appointment(doctor = self, patient, date)
        Appointment.new(@doctor = self, @patient = patient, @date = date)
    end

    def patients
        self.appointments.map { |appt| appt.patient }
    end

end