require 'spec_helper'

describe User do
  before do { @user =User.new(name: "Example User", email: "user@xample.com" )}
  end

  it "should have name" do
   @user. should respond_to(:name)
  end

  it "should have email" do
    @user.should respond_to(:email)
  end

  it "should pass validations" do
    should be_valid
  end
 
  describe "when name is not present " do
    before { @user.name ="" }

    it "shoud faill validations" do
      should_not be_valid
    end
    
  end
end
