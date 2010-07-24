require 'dojo'

describe 'average_time_of_the_day' do
  describe "Only one time" do
    it "should return this time" do
      average_time_of_the_day(["11:59pm"]).should == "11:59pm"
    end
  end
  
  describe "Two times in the same day" do
    it "should return the simple average" do
      average_time_of_the_day(["11:00pm","11:30pm"]).should == "11:15pm"
    end
  end
end


