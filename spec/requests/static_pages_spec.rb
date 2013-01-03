require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "Welcome to Dryzilla Technologies")
    end

    it " should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => ' | Home')
    end

  end

  describe "Help page" do
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

 it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :text =>" Welcome to Dryzilla Technologies | Help")
    end
  end


  describe "About page" do
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

 it "should have the title About Page'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :text =>"Welcome to Dryzilla Technologies | About Us")
    end
  end

  describe "Contact page " do
    it "should have the content" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Page')
    end

    it "should have the title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => " Welcome to Dryzilla Technologies | Contact Page")
    end
  end
end
