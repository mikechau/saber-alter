require 'spec_helper'

describe "values/new" do
  before(:each) do
    assign(:value, stub_model(Value,
      :truck_id => 1,
      :estimate => "9.99",
      :actual => "9.99"
    ).as_new_record)
  end

  it "renders new value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", values_path, "post" do
      assert_select "input#value_truck_id[name=?]", "value[truck_id]"
      assert_select "input#value_estimate[name=?]", "value[estimate]"
      assert_select "input#value_actual[name=?]", "value[actual]"
    end
  end
end
