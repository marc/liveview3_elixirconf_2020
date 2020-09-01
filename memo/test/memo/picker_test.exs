defmodule Memo.PickerTest do
  alias Memo.Temporary.Library.Picker
  use ExUnit.Case

  @tag :picker
  describe "list api" do
    test "should be non-empty" do
      assert length(Picker.list()) > 0
    end
  end

  @valid_id :macbeth

  @tag :picker
  describe "fetch api" do
    test "should return a passage given valid id" do
      assert Picker.fetch(@valid_id) == %{
               id: :macbeth,
               name: "Macbeth",
               body: "Out damn spot, out!",
               inserted_at: 3
             }
    end
  end

  describe "linking api" do
    test "next should return the next passage" do
      assert Picker.next(:macbeth)
    end

    test "prev should return the previous passage" do
      assert false
    end
  end
end
