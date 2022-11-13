class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/bakeries" do 
    Bakery.all.to_json 
  end

  get "/bakeries/:id" do

    bakery = Bakery.all.find(params[:id])
    bakery.to_json(include: :baked_goods)
  end

end
