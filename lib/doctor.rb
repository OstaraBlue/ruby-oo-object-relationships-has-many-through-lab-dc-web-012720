require 'pry'
class Doctor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def appointments
        app_arr = Appointment.all.select do |app_obj|
            app_obj.doctor == self
        end
    end
end
