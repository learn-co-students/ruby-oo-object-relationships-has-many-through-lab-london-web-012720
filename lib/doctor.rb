
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
        app = Appointment.all.select{|a| a}
        app
    end

    def new_appointment(patient, date)
        Appointment.new(self , patient, date)
    end

    def patients
        appointments.map{|a| a.patient}
    end
end