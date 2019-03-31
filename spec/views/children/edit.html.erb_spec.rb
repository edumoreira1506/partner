require "rails_helper"

RSpec.describe "children/edit", type: :view do
  before(:each) do
    @child = assign(:child, Child.create!(
                              first_name: "MyString",
                              last_name: "MyString",
                              gender: "MyString",
                              child_lives_with: "",
                              race: "",
                              agency_child_id: "MyString",
                              health_insurance: "",
                              item_needed: "MyString",
                              comments: "MyText"
                            ))
  end

  it "renders the edit child form" do
    render

    assert_select "form[action=?][method=?]", child_path(@child), "post" do
      assert_select "input[name=?]", "child[first_name]"

      assert_select "input[name=?]", "child[last_name]"

      assert_select "input[name=?]", "child[gender]"

      assert_select "input[name=?]", "child[child_lives_with]"

      assert_select "input[name=?]", "child[race]"

      assert_select "input[name=?]", "child[agency_child_id]"

      assert_select "input[name=?]", "child[health_insurance]"

      assert_select "input[name=?]", "child[item_needed]"

      assert_select "textarea[name=?]", "child[comments]"
    end
  end
end
