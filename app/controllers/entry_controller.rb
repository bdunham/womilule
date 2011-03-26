class EntryController < ApplicationController
  
  def view
    @item = {
      :title => 'St Johns Road',
      :long => '52.123123',
      :lat => '0.23123423',
      :street => 'St. Johns Road',
      :city => 'London',
      :lines => ['12','34','X11']
    }
  end
  
end
