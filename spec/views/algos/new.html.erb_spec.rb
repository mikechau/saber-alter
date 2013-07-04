require 'spec_helper'

describe "algos/new" do
  before(:each) do
    assign(:algo, stub_model(Algo,
      :name => "MyString",
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
    ).as_new_record)
  end

  it "renders new algo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", algos_path, "post" do
      assert_select "input#algo_name[name=?]", "algo[name]"
      assert_select "input#algo_y_intercept[name=?]", "algo[y_intercept]"
      assert_select "input#algo_a[name=?]", "algo[a]"
      assert_select "input#algo_b[name=?]", "algo[b]"
      assert_select "input#algo_c[name=?]", "algo[c]"
      assert_select "input#algo_d[name=?]", "algo[d]"
      assert_select "input#algo_e[name=?]", "algo[e]"
      assert_select "input#algo_f[name=?]", "algo[f]"
      assert_select "input#algo_g[name=?]", "algo[g]"
      assert_select "input#algo_h[name=?]", "algo[h]"
      assert_select "input#algo_i[name=?]", "algo[i]"
    end
  end
end
