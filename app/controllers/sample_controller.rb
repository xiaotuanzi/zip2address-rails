# -*- coding: utf-8 -*-

require  "zipcode"

class SampleController < ApplicationController
  def index
  end

  def find_address
    begin
      @address = ZipCode.new(params[:zipcode]).address
      @message = nil
    rescue
      @message = "エラーです"
    end
  end
end
