class FavdatesController < ApplicationController
  def getfavs

    @dob = params[:user][:born_on]
    @s = @dob.split('-').map{|s| s.to_i}
    @s[2]

    case @s[2]
    when 1,10,19,28
      @fav_dates = [1,4,10,13,19,22,28,31]
	  @fav_months = ["march", "August", "october"]
	  @fav_weeks = ["sunday", "monday"]
    when 2,11,20,29
      @fav_dates = [1,2,4,7,10,11,13,16,19,20,22,25,28,29,30]
	  @fav_months = ["april", "may", "june","july","november"]
      @fav_weeks = ["sunday", "monday","friday"]
      
    when 3,12,21,30

	  @fav_dates = [3,6,9,12,15,18,21,24,27,30]
	  @fav_months = ["february", "june", "september","december"]
	  @fav_weeks = ["thursday", "tuesday"]


	when 4,13,22,31

	@fav_dates = [1,2,4,7,10,11,16,19,20,25,28,29]
	@fav_months = ["june", "july"]
	@fav_weeks = ["sunday", "monday"]

	when 5,14,23

	@fav_dates = [1,4,5,14,19,22,23,28,31]
	@fav_months = ["july", "August"]
	@fav_weeks = ["wednesday", "friday"]

	when 6,15,24

	@fav_dates = [3,6,9,12,15,18,21,24,27,30]
	@fav_months = ["may", "october"]
	@fav_weeks = ["thursday", "tuesday", "friday"]


	when 7,16,25

	@fav_dates = [2,4,11,13,20,22,25]
	@fav_months = ["march","april","may","june","september","october","november","december"]
	@fav_weeks = ["sunday", "monday"]


	when 8,17,26

	@fav_dates = [5,8,14,15,17,19,23,24,26,28,29]
	@fav_months = ["march","april","may", "june","july","August" ,"september","october","november"]
	@fav_weeks = ["friday", "saturday", "sunday"]

	when  9,18,27

	@fav_dates = [1,3,6,9,10,12,15,18,19,21,27,28]
	@fav_months = ["march", "april", "june", "september"]
	@fav_weeks = ["thursday", "tuesday", "friday"]



    end

    respond_to do|format|
      format.js
    end
=begin  If person born in 1,10,19,28

	fav_dates = [1,4,10,13,19,22,28,31]
	fav_months = ["march", "August", "october"]
	fav_weeks = ["sunday", "monday"]


	If person born in 2,11,20,29

	fav_dates = [1,2,4,7,10,11,13,16,19,20,22,25,28,29,30]
	fav_months = ["april", "may", "june","july","november"]
    fav_weeks = ["sunday", "monday","friday"]


	


=end

  end
end






































