class ApplicationController < Sinatra::Base
  get '/bakeries' do
  # get all the bakeries from the database
    bakeries = Bakery.all
    # send them back as a JSON array
    bakeries.to_json
  end

  get '/bakeries/:id'do
    bakeries_id = Bakery.find(params[:id])
    bakeries_id.to_json
  end

  get 'baked_goods/by_price' do
    by_price = Bakery.order(:price)
    by_price.to_json
  end

  get 'baked_goodes/most_expensive' do
  end
end
