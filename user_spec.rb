require 'spec_helper'

describe User do
  before { @user =User.new(name: "Example User", email: "user@xample.com" )}
  

  it "should have name" do
   @user. should respond_to(:name)
  end

  it "should have email" do
    @user.should respond_to(:email)
  end

  it "should pass validations" do
   @user.should be_valid
  end

 
  describe "when name is not present " do
    before { @user.name ="" }

    it "should faill validations" do
      @user.should_not be_valid
    end
  end

    describe "when email is not present" do
      before { @user.email = "" }

      it "should fail validations" do
        @user.should_not be_valid
      end
    end

    describe "when name is too long" do
      before { @user.name = "a" * 51 }

      it " should fail validations" do
        @user.should_not be_valid
      end
    end
end
