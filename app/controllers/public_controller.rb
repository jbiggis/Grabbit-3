class PublicController < ApplicationController

def home

@deal = Deal.find(1)

end

def deal

@deal = Deal.find(params[:id])

end

end
