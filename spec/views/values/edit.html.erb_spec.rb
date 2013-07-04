require 'spec_helper'

describe "values/edit" do
  before(:each) do
    @value = assign(:value, stub_model(Value,
      :truck_id => 1,
      :estimate => "9.99",
      :actual => "9.99"
    ))
  end

  it "renders the edit value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", value_path(@value), "post" do
      assert_select "input#value_truck_id[name=?]", "value[truck_id]"
      assert_select "input#value_estimate[name=?]", "value[estimate]"
      assert_select "input#value_actual[name=?]", "value[actual]"
    end
  end
end
