require 'test_helper'

class EnqueuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enqueue = enqueues(:one)
  end

  test "should get index" do
    get enqueues_url
    assert_response :success
  end

  test "should get new" do
    get new_enqueue_url
    assert_response :success
  end

  test "should create enqueue" do
    assert_difference('Enqueue.count') do
      post enqueues_url, params: { enqueue: { description: @enqueue.description, name: @enqueue.name, user_id: @enqueue.user_id } }
    end

    assert_redirected_to enqueue_url(Enqueue.last)
  end

  test "should show enqueue" do
    get enqueue_url(@enqueue)
    assert_response :success
  end

  test "should get edit" do
    get edit_enqueue_url(@enqueue)
    assert_response :success
  end

  test "should update enqueue" do
    patch enqueue_url(@enqueue), params: { enqueue: { description: @enqueue.description, name: @enqueue.name, user_id: @enqueue.user_id } }
    assert_redirected_to enqueue_url(@enqueue)
  end

  test "should destroy enqueue" do
    assert_difference('Enqueue.count', -1) do
      delete enqueue_url(@enqueue)
    end

    assert_redirected_to enqueues_url
  end
end
