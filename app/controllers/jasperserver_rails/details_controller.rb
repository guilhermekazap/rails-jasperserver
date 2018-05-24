require_dependency 'jasperserver_rails/application_controller'

module JasperserverRails
  class DetailsController < ApplicationController
    def show
      details = ReportExecutionDetails.new(request_id: params[:id])
      render json: details.perform
    end
  end
end
