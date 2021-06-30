class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
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

    def show
        @appointment = Appointment.find(params[:id])
    end

    private

    def appointment_params
        params.require(:appointment).permit(:appointment_type, :date_time)
    end
end
