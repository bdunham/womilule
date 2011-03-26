class CategoryController < ApplicationController
  
  def index
    @categories = ['Recreation','Transport','Health','Sport','Education']
  end
  
  
  def sets
    @datasets = ['Bus Stops', 'London Bike Stands', 'Tube Stations']
  end
  
  def points
    
  end
  
  
  def points_json
    @data = [
      {
        :title => 'St Johns Road',
        :long => '52.123123',
        :lat => '0.23123423'
      },
      {
        :title => 'York Street',
        :long => '51.123123',
        :lat => '0.25123423'
      }
    ]
    render :text => @data.to_json
  end
  
end
