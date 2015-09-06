class Airplane
	attr_reader :type, :wing, :horsepower
  def initialize(type, wing, horsepower)
    @type = type
    @wing = wing
    @horsepower = horsepower
    @start = false
    @takeoff = false
    @land = false
    # @start == false
  end

  # def type
  #   @type
  # end

  # def wing
  #   @wing
  # end

  # def horsepower
  #   @horsepower
  # end

  def start
 		if @start == false
 			@start = true
 			"airplane started"
 		else
 			"airplane already started"
 		end 

  end

  def takeoff
  	if @start == false
  		"airplane not started, please start"
  	else
  		@takeoff = true
  		"airplane launched"
  	end
  end

  def land
  	if @start == false
  		"airplane not started, please start"
  	elsif @start == true && @takeoff == false
  		"airplane already on the ground"
  	elsif @takeoff == true
  		@land = true
  		"airplane landed"
  	end
  end





end
