# frozen_string_literal: true

# app/controllers/conversions_controller.rb
class ConversionsController < ApplicationController
  def new
    conversion = Conversion.new
  end

  def create
    conversion = Conversion.new(conversion_params)
    if conversion.save
      render json: { message: "Data has been created and Rot-13 version is #{conversion.rot}" }
    else
      render json: { message: conversion.errors.messages }
    end
  end

  private

  def conversion_params
    params.require(:conversion).permit(:body)
  end
end
