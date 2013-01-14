require 'spec_helper'

Capybara.javascript_driver = :webkit
describe "fill_in with webkit" do
  it "should return a negative number", js: true do
    visit "/"
    fill_in('something', :with => '-2.5')
    find('input').value.should == '-2.5'
  end
end
