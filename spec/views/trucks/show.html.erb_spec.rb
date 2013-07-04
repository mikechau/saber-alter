require 'spec_helper'

describe "trucks/show" do
  before(:each) do
    @truck = assign(:truck, stub_model(Truck,
      :name => "Name",
      :model_year => "",
      :m => "",
      :m2 => "",
      :a => "",
      :b => "",
      :c => "",
      :d => "",
      :e => "",
      :f => "",
      :g => "",
      :h => "",
      :i => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/9.99/)
  end
end
