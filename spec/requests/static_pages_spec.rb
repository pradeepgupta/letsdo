require 'spec_helper'

describe "Static pages" do
  before { visit root_path }
  describe "Home page" do
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      page.should have_selector('title',
                                :text => full_title(''))
    end

    it " should not have a custom page title" do
      page.should_not have_selector('title', :text => ' | Home')
    end

  end

  describe "Help page" do
    before { visit help_path }
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                                :text =>" Welcome to Dryzilla Technologies | Help")
    end
  end


  describe "About page" do
    before {visit about_path }
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title About Page'" do
      page.should have_selector('title',
                                :text =>"Welcome to Dryzilla Technologies | About Us")
    end
  end

  describe "Contact page " do
    before { visit contact_path }
    it "should have the h1 content" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title', :text => " Welcome to Dryzilla Technologies | Contact")
    end
  end
end
