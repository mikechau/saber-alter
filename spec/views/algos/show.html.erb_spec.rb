require 'spec_helper'

describe "algos/show" do
  before(:each) do
    @algo = assign(:algo, stub_model(Algo,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
  end
end
