
class LuckyNumbersController < ApplicationController
  include LuckyNumbersHelper
# Calculate Lucky Number of a person
private 
  def luckynum
  	
  	@dob = params[:user][:born_on]
  	@dob.gsub!(/[^0-9A-Za-z]/, '')
  	#raise @dob.inspect
  	s=@dob.split('').map{|s| s.to_i}
  	length=s.length
  	@lucky1 = s[length-1]+s[length-2]
  	@lucky2= s.inject(0,:+)

  	while  @lucky2 >= 10
    tmp=@lucky2.to_s.split('').map { |e| e.to_i  }
    @lucky2 = tmp.inject(0, :+)
  	end
  	#raise @lucky2.inspect
  	return @lucky1,@lucky2
#    respond_to do|format|
 #   	format.js
  #  end
  end


# Calculate cellnumbermatch with lucky Number
public
  def cellnumbermatch
  	#raise params.inspect
    @lucky1,@lucky2=luckynum
    l=[@lucky1,@lucky2]
    #raise @lucky1.inspect
    a=params[:phno]
    b=a.split('').map{|s| s.to_i}
    @rescell=b.inject(0, :+)
    #raise @rescell.inspect
    while @rescell >=10
      tmp=@rescell.to_s.split('').map { |e| e.to_i  }
      @rescell=tmp.inject(0, :+)
    end
    #raise @rescell.inspect
    #if @rescell == (@lucky2 || @lucky1)
     if l.include?(@rescell)   
    	@msg= "matched with luckynumber"
    else
    	@msg = "Phone number not matched with your luckynumber"
    end
    #raise @msg.inspect
    respond_to do|format|
    	format.js
    end
  end


# Calculate VehicleNumberMatch with Lucky Number
  def vehiclenumbermatch
  	raise params.inspect
  	 #A,F=3,9
  	 #raise A+F+2.inspect
     #@luck1,@luck2 = luckynum
     a=params[:vehiclenumber]
     b=a.split('')
     #raise b.inspect
     @rescell=b.inject(0, :+)
     raise @rescell.inspect      
  end

  def luckynumber
#  	raise params.inspect
  	@luclk1,@lucky2=luckynum
  	respond_to do |format|
  		format.js
  	end
  end
end
