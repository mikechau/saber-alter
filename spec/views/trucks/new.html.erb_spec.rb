require 'spec_helper'

describe "trucks/new" do
  before(:each) do
    assign(:truck, stub_model(Truck,
      :name => "MyString",
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
    ).as_new_record)
  end

  it "renders new truck form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trucks_path, "post" do
      assert_select "input#truck_name[name=?]", "truck[name]"
      assert_select "input#truck_model_year[name=?]", "truck[model_year]"
      assert_select "input#truck_m[name=?]", "truck[m]"
      assert_select "input#truck_m2[name=?]", "truck[m2]"
      assert_select "input#truck_a[name=?]", "truck[a]"
      assert_select "input#truck_b[name=?]", "truck[b]"
      assert_select "input#truck_c[name=?]", "truck[c]"
      assert_select "input#truck_d[name=?]", "truck[d]"
      assert_select "input#truck_e[name=?]", "truck[e]"
      assert_select "input#truck_f[name=?]", "truck[f]"
      assert_select "input#truck_g[name=?]", "truck[g]"
      assert_select "input#truck_h[name=?]", "truck[h]"
      assert_select "input#truck_i[name=?]", "truck[i]"
    end
  end
end
