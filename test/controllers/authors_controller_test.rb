require "test_helper"

describe AuthorsController do
  it "should get index" do
    # Arrange

    # Act
    get authors_path

    # Assert
    must_respond_with :success
    # must_redirect_to root_path
  end

  it "should show an author" do
    get author_path(authors(:metz).id)

    must_respond_with :success
  end

  describe "edit" do
    it "should successfully get to an edit page for an author that exists" do
      get edit_author_path(authors(:metz).id)

      must_respond_with :success
    end

    it "should redirect_to the home page when going to the edit page of an author that does not exist" do
      get edit_author_path 'foo'

      must_respond_with :redirect
      must_redirect_to root_path
    end
  end


  it "should update an author" do

  end

  it "should get new" do
    get new_author_path

    must_respond_with :success
  end

  it "should get create" do

  end

  it "should get destroy" do

  end

end
