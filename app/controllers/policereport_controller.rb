class PolicereportController < ApplicationController
	def show
		@reports = Policereport.all
		sleep(2.0);
  	render json: @reports
	end

	def new
		@policereport = Policereport.new
	end

	def create
		report = Policereport.new(report_params)
		
		if report.save
			redirect_to '/'
		else
			render 'new'
		end
	end

	private
		def report_params
			puts params
		  params.require(:policereport).permit(:description, :city, :state, :phonenumber, :name)
		end
end
