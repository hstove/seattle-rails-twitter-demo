require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  setup do
    @tweet = tweets(:one)
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweets)
  end

  test "shouldn't get new" do
    get :new
    assert_redirected_to "/"
  end

  test "should create tweet" do
    @controller.stubs(:current_user).returns(@user)
    assert_difference('Tweet.count') do
      post :create, tweet: { body: 'awesome tweet', user_id: @user.id }
    end

    assert_redirected_to tweet_path(assigns(:tweet))
  end

  test "should show tweet" do
    get :show, id: @tweet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweet
    assert_response :success
  end

  test "should update tweet" do
    @controller.stubs(:current_user).returns(@user)
    @tweet.user_id = @user.id
    @tweet.save!
    put :update, id: @tweet, tweet: {body: 'awesome', user_id: @user.id}
    assert_redirected_to tweet_path(assigns(:tweet))
  end

  test "should not update tweet" do
    put :update, id: @tweet, tweet: {body: 'awesome', user_id: @user.id}
    assert_redirected_to "/"
  end

  test "should destroy tweet" do
    assert_difference('Tweet.count', -1) do
      delete :destroy, id: @tweet
    end

    assert_redirected_to tweets_path
  end
end
