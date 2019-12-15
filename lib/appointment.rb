require "pry"

class Appointment

    attr_reader :patient, :doctor, :date

    @@all = []

    def initialize (doctor, patient, date)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

end