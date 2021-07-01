class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all.order("date ASC")
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

    def update
        @appointment = Appointment.find(params[:id])

        if @appointment.update(appointment_params)
            redirect_to @appointment
        else
            render 'edit'
        end
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy


        redirect_to appointments_path
    end

    private

    def appointment_params
        params.require(:appointment).permit(:appointment_type, :date, :time, :notes)
    end
end
