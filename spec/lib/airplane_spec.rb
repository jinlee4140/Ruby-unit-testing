require_relative "../../lib/airplane"

describe Airplane do
  let(:airplane) { Airplane.new("type", "wing", "horsepower") }
  # describe "#initialize" do
    # context "object initialized" do
      # it "returns type, wing, and horsepower" do
      	# expect(Airplane.new("type", "wing", "horsepower").initialize).to eq 
      # end
    # end
  # end


  describe "#type" do
    it "returns the value of the type" do
      airplane = Airplane.new("cesna", "wing", "horsepower")
      expect(airplane.type).to eq "cesna"
    end
  end

  describe "#wing" do
    it "returns the value of the wing" do
      airplane = Airplane.new("type", 20, "horsepower")
      expect(airplane.wing).to eq 20
    end
  end

  describe "#horsepower" do
    it "returns the value of the horsepower" do
      airplane = Airplane.new("type", "wing", 100)
      expect(airplane.horsepower).to eq 100
    end
  end



  
  

  describe "#start" do
    context "airplane is not running and needs to start" do
      it "airplane started" do
        expect(airplane.start).to eq "airplane started"
      end
    end
    context "airplane is not running and needs to start" do
      it "airplane started" do
        airplane.start
        expect(airplane.start).to eq "airplane already started"
      end
    end
  end


  describe "#takeoff" do
      context "airplane engine is off" do
      it "does not expect take off" do
        expect(airplane.takeoff).to eq "airplane not started, please start"
      end
    end
  end

  describe "#takeoff" do
    context "airplane needs to take off" do
      it "airplane is taking off" do
        airplane.start
        expect(airplane.takeoff).to eq "airplane launched"
      end
    end
  end


 describe "#land" do
    context "airplane started turning engine on but has not taken off yet" do
      it "does not expect to land" do
        expect(airplane.land).to eq "airplane not started, please start"
      end
    end
  end

  describe "#land" do
    context "airplane started turning engine on but has not taken off yet" do
      it "does not expect to land" do
        airplane.start

        expect(airplane.land).to eq "airplane already on the ground"
      end
    end
  end


  describe "#land" do
    context "airplane needs to land" do
      it "airplane is landing" do
        airplane.start
        airplane.takeoff
        expect(airplane.land).to eq "airplane landed"
      end
    end
  end



end 






# Airplane.new("type", "wing", "horsepower") do we always have to put quotes for
# these three parameters? wing and horsepower are integers, not a string


# describe Album do
#   describe '#id' do
#     context 'when the album is created' do
#       it 'returns true' do
#         expect(Album.new('id', 'title', 'artists').id).to eq "id"
#       end
#     end
#   end
# end

