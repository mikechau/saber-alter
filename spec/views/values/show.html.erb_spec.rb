require 'spec_helper'

describe "values/show" do
  before(:each) do
    @value = assign(:value, stub_model(Value,
      :truck_id => 1,
      :estimate => "9.99",
      :actual => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
