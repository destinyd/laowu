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

describe ApplyingsController do

  # This should return the minimal set of attributes required to create a valid
  # Applying. As you add validations to Applying, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ApplyingsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all applyings as @applyings" do
      applying = Applying.create! valid_attributes
      get :index, {}, valid_session
      assigns(:applyings).should eq([applying])
    end
  end

  describe "GET show" do
    it "assigns the requested applying as @applying" do
      applying = Applying.create! valid_attributes
      get :show, {:id => applying.to_param}, valid_session
      assigns(:applying).should eq(applying)
    end
  end

  describe "GET new" do
    it "assigns a new applying as @applying" do
      get :new, {}, valid_session
      assigns(:applying).should be_a_new(Applying)
    end
  end

  describe "GET edit" do
    it "assigns the requested applying as @applying" do
      applying = Applying.create! valid_attributes
      get :edit, {:id => applying.to_param}, valid_session
      assigns(:applying).should eq(applying)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Applying" do
        expect {
          post :create, {:applying => valid_attributes}, valid_session
        }.to change(Applying, :count).by(1)
      end

      it "assigns a newly created applying as @applying" do
        post :create, {:applying => valid_attributes}, valid_session
        assigns(:applying).should be_a(Applying)
        assigns(:applying).should be_persisted
      end

      it "redirects to the created applying" do
        post :create, {:applying => valid_attributes}, valid_session
        response.should redirect_to(Applying.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved applying as @applying" do
        # Trigger the behavior that occurs when invalid params are submitted
        Applying.any_instance.stub(:save).and_return(false)
        post :create, {:applying => {}}, valid_session
        assigns(:applying).should be_a_new(Applying)
      end

      # it "re-renders the 'new' template" do
      #   # Trigger the behavior that occurs when invalid params are submitted
      #   Applying.any_instance.stub(:save).and_return(false)
      #   post :create, {:applying => {}}, valid_session
      #   response.should render_template("new")
      # end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested applying" do
        applying = Applying.create! valid_attributes
        # Assuming there are no other applyings in the database, this
        # specifies that the Applying created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Applying.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => applying.to_param, :applying => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested applying as @applying" do
        applying = Applying.create! valid_attributes
        put :update, {:id => applying.to_param, :applying => valid_attributes}, valid_session
        assigns(:applying).should eq(applying)
      end

      it "redirects to the applying" do
        applying = Applying.create! valid_attributes
        put :update, {:id => applying.to_param, :applying => valid_attributes}, valid_session
        response.should redirect_to(applying)
      end
    end

    describe "with invalid params" do
      it "assigns the applying as @applying" do
        applying = Applying.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Applying.any_instance.stub(:save).and_return(false)
        put :update, {:id => applying.to_param, :applying => {}}, valid_session
        assigns(:applying).should eq(applying)
      end

      # it "re-renders the 'edit' template" do
      #   applying = Applying.create! valid_attributes
      #   # Trigger the behavior that occurs when invalid params are submitted
      #   Applying.any_instance.stub(:save).and_return(false)
      #   put :update, {:id => applying.to_param, :applying => {}}, valid_session
      #   response.should render_template("edit")
      # end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested applying" do
      applying = Applying.create! valid_attributes
      expect {
        delete :destroy, {:id => applying.to_param}, valid_session
      }.to change(Applying, :count).by(-1)
    end

    it "redirects to the applyings list" do
      applying = Applying.create! valid_attributes
      delete :destroy, {:id => applying.to_param}, valid_session
      response.should redirect_to(applyings_url)
    end
  end

end
