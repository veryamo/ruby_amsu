require 'test_helper'

class ProgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prog = progs(:one)
  end

  test "should get index" do
    get progs_url
    assert_response :success
  end

  test "should get new" do
    get new_prog_url
    assert_response :success
  end

  # test "should create prog" do
    # assert_difference('Prog.count') do
      # post progs_url, params: { prog: { Лиценз_№: @prog.Лиценз_№, Лицензия: @prog.Лицензия, Название: @prog.Название, Тип_лицензии: @prog.Тип_лицензии } }
    # end

    # assert_redirected_to prog_url(Prog.last)
  # end

  test "should show prog" do
    get prog_url(@prog)
    assert_response :success
  end

  test "should get edit" do
    get edit_prog_url(@prog)
    assert_response :success
  end

  # test "should update prog" do
    # patch prog_url(@prog), params: { prog: { Лиценз_№: @prog.Лиценз_№, Лицензия: @prog.Лицензия, Название: @prog.Название, Тип_лицензии: @prog.Тип_лицензии } }
    # assert_redirected_to prog_url(@prog)
  # end

  test "should destroy prog" do
    assert_difference('Prog.count', -1) do
      delete prog_url(@prog)
    end

    assert_redirected_to progs_url
  end
end
