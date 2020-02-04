class Doctor

    attr_accessor :name
   

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all 
    @@all
    end


    def appointments
      pp  Appointment.all.select { |i| i.doctor == self}
    end
     
    def new_appointment(patient, date )
        Appointment.new(date, patient, self)
    end

     def patients
         appointments.map(&:patient)
     end


end