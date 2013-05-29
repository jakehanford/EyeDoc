require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PursesController do

  # This should return the minimal set of attributes required to create a valid
  # Purse. As you add validations to Purse, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PursesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all purses as @purses" do
      purse = Purse.create! valid_attributes
      get :index, {}, valid_session
      assigns(:purses).should eq([purse])
    end
  end

  describe "GET show" do
    it "assigns the requested purse as @purse" do
      purse = Purse.create! valid_attributes
      get :show, {:id => purse.to_param}, valid_session
      assigns(:purse).should eq(purse)
    end
  end

  describe "GET new" do
    it "assigns a new purse as @purse" do
      get :new, {}, valid_session
      assigns(:purse).should be_a_new(Purse)
    end
  end

  describe "GET edit" do
    it "assigns the requested purse as @purse" do
      purse = Purse.create! valid_attributes
      get :edit, {:id => purse.to_param}, valid_session
      assigns(:purse).should eq(purse)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Purse" do
        expect {
          post :create, {:purse => valid_attributes}, valid_session
        }.to change(Purse, :count).by(1)
      end

      it "assigns a newly created purse as @purse" do
        post :create, {:purse => valid_attributes}, valid_session
        assigns(:purse).should be_a(Purse)
        assigns(:purse).should be_persisted
      end

      it "redirects to the created purse" do
        post :create, {:purse => valid_attributes}, valid_session
        response.should redirect_to(Purse.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved purse as @purse" do
        # Trigger the behavior that occurs when invalid params are submitted
        Purse.any_instance.stub(:save).and_return(false)
        post :create, {:purse => {}}, valid_session
        assigns(:purse).should be_a_new(Purse)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Purse.any_instance.stub(:save).and_return(false)
        post :create, {:purse => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested purse" do
        purse = Purse.create! valid_attributes
        # Assuming there are no other purses in the database, this
        # specifies that the Purse created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Purse.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => purse.to_param, :purse => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested purse as @purse" do
        purse = Purse.create! valid_attributes
        put :update, {:id => purse.to_param, :purse => valid_attributes}, valid_session
        assigns(:purse).should eq(purse)
      end

      it "redirects to the purse" do
        purse = Purse.create! valid_attributes
        put :update, {:id => purse.to_param, :purse => valid_attributes}, valid_session
        response.should redirect_to(purse)
      end
    end

    describe "with invalid params" do
      it "assigns the purse as @purse" do
        purse = Purse.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Purse.any_instance.stub(:save).and_return(false)
        put :update, {:id => purse.to_param, :purse => {}}, valid_session
        assigns(:purse).should eq(purse)
      end

      it "re-renders the 'edit' template" do
        purse = Purse.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Purse.any_instance.stub(:save).and_return(false)
        put :update, {:id => purse.to_param, :purse => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested purse" do
      purse = Purse.create! valid_attributes
      expect {
        delete :destroy, {:id => purse.to_param}, valid_session
      }.to change(Purse, :count).by(-1)
    end

    it "redirects to the purses list" do
      purse = Purse.create! valid_attributes
      delete :destroy, {:id => purse.to_param}, valid_session
      response.should redirect_to(purses_url)
    end
  end

end