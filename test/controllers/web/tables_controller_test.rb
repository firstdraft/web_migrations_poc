require 'test_helper'

class Web::TablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_table = web_tables(:one)
  end

  test "should get index" do
    get web_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_web_table_url
    assert_response :success
  end

  test "should create web_table" do
    assert_difference('Web::Table.count') do
      post web_tables_url, params: { web_table: {  } }
    end

    assert_redirected_to web_table_url(Web::Table.last)
  end

  test "should show web_table" do
    get web_table_url(@web_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_table_url(@web_table)
    assert_response :success
  end

  test "should update web_table" do
    patch web_table_url(@web_table), params: { web_table: {  } }
    assert_redirected_to web_table_url(@web_table)
  end

  test "should destroy web_table" do
    assert_difference('Web::Table.count', -1) do
      delete web_table_url(@web_table)
    end

    assert_redirected_to web_tables_url
  end
end
