class AppointmentsController < ApplicationController

    def index

    end

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(appointment_params)

        if @appointment.save
            redirect_to @appointment
        else
            render 'new'
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(:type, :date_time)
    end
end
