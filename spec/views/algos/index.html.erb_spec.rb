require 'spec_helper'

describe "algos/index" do
  before(:each) do
    assign(:algos, [
      stub_model(Algo,
        :name => "Name",
        :y_intercept => "9.99",
        :a => 1,
        :b => false,
        :c => false,
        :d => false,
        :e => false,
        :f => false,
        :g => false,
        :h => false,
        :i => "9.99"
      ),
      stub_model(Algo,
        :name => "Name",
        :y_intercept => "9.99",
        :a => 1,
        :b => false,
        :c => false,
        :d => false,
        :e => false,
        :f => false,
        :g => false,
        :h => false,
        :i => "9.99"
      )
    ])
  end

  it "renders a list of algos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
