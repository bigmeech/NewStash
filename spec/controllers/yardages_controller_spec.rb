require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe YardagesController do

  def mock_yardage(stubs={})
    @mock_yardage ||= mock_model(Yardage, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all yardages as @yardages" do
      Yardage.stub(:all) { [mock_yardage] }
      get :index
      assigns(:yardages).should eq([mock_yardage])
    end
  end

  describe "GET show" do
    it "assigns the requested yardage as @yardage" do
      Yardage.stub(:find).with("37") { mock_yardage }
      get :show, :id => "37"
      assigns(:yardage).should be(mock_yardage)
    end
  end

  describe "GET new" do
    it "assigns a new yardage as @yardage" do
      Yardage.stub(:new) { mock_yardage }
      get :new
      assigns(:yardage).should be(mock_yardage)
    end
  end

  describe "GET edit" do
    it "assigns the requested yardage as @yardage" do
      Yardage.stub(:find).with("37") { mock_yardage }
      get :edit, :id => "37"
      assigns(:yardage).should be(mock_yardage)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created yardage as @yardage" do
        Yardage.stub(:new).with({'these' => 'params'}) { mock_yardage(:save => true) }
        post :create, :yardage => {'these' => 'params'}
        assigns(:yardage).should be(mock_yardage)
      end

      it "redirects to the created yardage" do
        Yardage.stub(:new) { mock_yardage(:save => true) }
        post :create, :yardage => {}
        response.should redirect_to(yardage_url(mock_yardage))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved yardage as @yardage" do
        Yardage.stub(:new).with({'these' => 'params'}) { mock_yardage(:save => false) }
        post :create, :yardage => {'these' => 'params'}
        assigns(:yardage).should be(mock_yardage)
      end

      it "re-renders the 'new' template" do
        Yardage.stub(:new) { mock_yardage(:save => false) }
        post :create, :yardage => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested yardage" do
        Yardage.stub(:find).with("37") { mock_yardage }
        mock_yardage.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :yardage => {'these' => 'params'}
      end

      it "assigns the requested yardage as @yardage" do
        Yardage.stub(:find) { mock_yardage(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:yardage).should be(mock_yardage)
      end

      it "redirects to the yardage" do
        Yardage.stub(:find) { mock_yardage(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(yardage_url(mock_yardage))
      end
    end

    describe "with invalid params" do
      it "assigns the yardage as @yardage" do
        Yardage.stub(:find) { mock_yardage(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:yardage).should be(mock_yardage)
      end

      it "re-renders the 'edit' template" do
        Yardage.stub(:find) { mock_yardage(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested yardage" do
      Yardage.stub(:find).with("37") { mock_yardage }
      mock_yardage.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the yardages list" do
      Yardage.stub(:find) { mock_yardage }
      delete :destroy, :id => "1"
      response.should redirect_to(yardages_url)
    end
  end

end
