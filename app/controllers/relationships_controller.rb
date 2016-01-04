class RelationshipsController < ApplicationController
  def index
  end

  def digital
    @person1_dob = params[:user][:born_on]
    @person2_dob = params[:friend][:born_on]
    @person1_dob= @person1_dob.split('-').map{|s| s.to_i}
    @person2_dob = @person2_dob.split('-').map{|s| s.to_i}
    case @person1_dob[2]
    when 1,10,19,28
     if [9,8,27].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [4,13,22,31].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [8,17,26,6,15,24,7,16,25].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [2,11,20,29,3,12,21,30,5,14,23].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
    when 2,11,20,29
      
      if [8,17,26].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [7,16,25,9,18,27].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [5,14,23].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [1,10,19,28,3,12,21,30,4,13,22,31,6,15,24].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
    when 3,12,21,30

if [7,16,25].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [5,14,23,6,15,24,9,18,27].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [4,13,22,31,8,17,26].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [1,10,19,28,2,11,20,29].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end

	when 4,13,22,31
     if [6,15,24].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [1,10,19,28,8,17,26].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [3,12,21,30,5,14,23].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [2,11,20,29,7,16,25,9,18,27].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
	
	when 5,14,23

	if [5,14,23].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [3,12,21,30].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [2,11,20,19,4,13,22,31].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [1,10,19,28,6,15,24,7,16,25,8,17,26,9,18,27].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
	when 6,15,24

	
if [4,13,22,31].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [3,12,21,30,9,18,27].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [1,10,19,28,8,17,26].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [2,11,20,29,5,14,23,7,16,25].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end

	when 7,16,25
if [3,12,21,30].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [2,11,20,29].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [1,10,19,28,9,18,27].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [4,13,22,31,5,14,23,6,15,24,8,17,26].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
	when 8,17,26
if [2,11,20,29].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [1,10,19,28,4,13,22,31].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [3,12,21,30,6,15,24].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [5,14,23,7,16,25,9,18,27].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
	when  9,18,27

if [1,10,19,28].include?(@person2_dob[2]) 
      @relation = "Vibrates"
     elsif [2,11,20,29,3,12,21,30,6,15,24].include?(@person2_dob[2])
     	@relation= "Attracts"

     elsif [7,16,25].include?(@person2_dob[2])
     	@relation = "DisAgree"
     elsif [4,13,22,31,5,14,23,8,17,26].include?(@person2_dob[2])
     	@relation = "Passive"
     else
     	@relation = "Neutral"
     		
     end
    	respond_to do|format|
          
        format.js
    	end	
    end
  end

  def friendship

  @my_dob = params[:user][:born_on]
  
  @s = @my_dob.split('-').map{|s| s.to_i}
  @s[2]
  @friend_dob = params[:friend][:born_on]
  @friend_dob.gsub!(/[^0-9A-Za-z]/, '')
  @friend_dob=@friend_dob.split('').map{|s| s.to_i}
  @lucky2= @friend_dob.inject(0,:+)

  	while  @lucky2 >= 10
    tmp=@lucky2.to_s.split('').map { |e| e.to_i  }
    @lucky2 = tmp.inject(0, :+)
  	end



  case  @s[2]
   when 1,10,19,28
      if  [1,3,4,6,8].include?(@lucky2)
        @percentage = "80%"
      else 
        @percentage = "0%"
      end
    when 2,11,20,29
        if [2,3,7,8].include?(@lucky2)
           @percentage = "75%"
        else
           @percentage = "0%"  	
        end     
    when 3,12,21,30

	   if [1,3,6,9].include?(@lucky2)
	   	@percentage = "90%"
	   else
	   	@percentage = "0%"
	   end


	when 4,13,22,31

	if [1,4,6,8].include?(@lucky2)
		@percentage = "75%"
	else
		@percentage = "0%"
	end

	when 5,14,23

	if [3,5,6,8].include?(@lucky2)
		@percentage = "70%"
	else
		@percentage = "0%"
	end

	when 6,15,24

	if [1,5,6,8,9].include?(@lucky2)
		@percentage = "90%"
	else
		@percentage = "0%"
	end


	when 7,16,25

	if [2,3,7,9].include?(@lucky2)
		@percentage = "65%"
	else
		@percentage = "0%"
	end


	when 8,17,26

	if [1,2,3,4,5,7].include?(@lucky2)
		@percentage = "69%"
	else
		@percentage = "0%"
	end

	when  9,18,27

	if [1,3,6,7,9].include?(@lucky2)
		@percentage = "85%"
	else
		@percentage = "0%"
	end


    end
  respond_to do|format|
     format.js
  end
 

  end
end
