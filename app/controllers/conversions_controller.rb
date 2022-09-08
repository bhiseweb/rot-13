class ConversionsController < ApplicationController

  def new
    @conversion = Conversion.new
  end

  def create
    @conversion = Conversion.new(conversion_params)
    if @conversion.save
      render json: {message: "data has been created"}
    else
      render json: {message: @conversion.errors.messages}
    end
  end

  private
    def conversion_params
      params.require(:conversion).permit(:body)
    end
end
