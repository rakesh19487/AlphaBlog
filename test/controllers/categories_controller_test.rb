require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @category = Category.create(name: "sports")
        @user = User.create(username: "John", email: "john@example.com", password: "password", password_confirmation: "password", admin: true)
    end    

    test "should get categories index" do
        get categories_path
        assert_response :success
    end

    test "should get categories new" do
        sign_in_as(@user, 'password')
        get new_category_path
        assert_response :success
        
    end

    test "should get categories show" do 
        get category_path(@category)
        assert_response :success
    end    

    test "should redirect create category when admin is not logged in" do
        assert_no_difference "Category.count" do
          post categories_path, params: {category: {name: "sports"}}
        end
    end
    
end    