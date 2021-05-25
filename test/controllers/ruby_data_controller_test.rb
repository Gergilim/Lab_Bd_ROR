require "test_helper"

class RubyDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_datum = ruby_data(:one)
  end

  test "should get index" do
    get ruby_data_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_datum_url
    assert_response :success
  end

  test "should create ruby_datum" do
    assert_difference('RubyDatum.count') do
      post ruby_data_url, params: { ruby_datum: { rubyType: @ruby_datum.rubyType, valInput: @ruby_datum.valInput } }
    end

    assert_redirected_to ruby_datum_url(RubyDatum.last)
  end

  test "should show ruby_datum" do
    get ruby_datum_url(@ruby_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_datum_url(@ruby_datum)
    assert_response :success
  end

  test "should update ruby_datum" do
    patch ruby_datum_url(@ruby_datum), params: { ruby_datum: { rubyType: @ruby_datum.rubyType, valInput: @ruby_datum.valInput } }
    assert_redirected_to ruby_datum_url(@ruby_datum)
  end

  test "should destroy ruby_datum" do
    assert_difference('RubyDatum.count', -1) do
      delete ruby_datum_url(@ruby_datum)
    end

    assert_redirected_to ruby_data_url
  end
end
