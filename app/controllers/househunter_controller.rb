class HousehunterController < ApplicationController
  def search
        lower_price_range =(params[:lower_price_range])
        upper_price_range =(params[:upper_price_range])
        lower_area_range =(params[:lower_area_range])
        upper_area_range =(params[:upper_area_range])
        location = (params[:location])
  

      	@houses = House.all
        if ((lower_price_range == "" )&&(upper_price_range == "")&&(lower_area_range == "")&&(upper_area_range == "" ) &&(location==""))
          @houses = House.all
        end
        if ((lower_area_range != "" )&&(upper_area_range != "" ))
          @houses = @houses.select{|h| (h.sqft.to_f >= lower_area_range.to_f )&&( h.sqft.to_f <= upper_area_range.to_f ) }
        end
        if((lower_price_range != "" )&&(upper_price_range != ""))
          @houses = @houses.select{|h| (h.price.to_f >= lower_price_range.to_f )&&( h.price.to_f <= upper_price_range.to_f	) }
        end
        if location != ""
          @houses = @houses.select{|h| (h.location == location ) }
        end
  end
end