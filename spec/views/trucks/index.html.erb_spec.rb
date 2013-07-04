require 'spec_helper'

describe "trucks/index" do
  before(:each) do
    assign(:trucks, [
      stub_model(Truck,
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
      ),
      stub_model(Truck,
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
      )
    ])
  end

  it "renders a list of trucks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
