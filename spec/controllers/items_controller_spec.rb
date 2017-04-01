require 'rails_helper'

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

RSpec.describe ItemsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Item. As you add validations to Item, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {:name => 'Some name', :quantity => 1}
  }

  let(:invalid_attributes) {
    {:name => ''}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all items as @items" do
      item = Item.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:items)).to eq([item])
    end
  end

  describe "GET #show" do
    it "assigns the requested item as @item" do
      item = Item.create! valid_attributes
      get :show, params: {id: item.to_param}, session: valid_session
      expect(assigns(:item)).to eq(item)
    end
  end

  describe "GET #new" do
    it "assigns a new item as @item" do
      get :new, params: {}, session: valid_session
      expect(assigns(:item)).to be_a_new(Item)
    end
  end

  describe "GET #edit" do
    it "assigns the requested item as @item" do
      item = Item.create! valid_attributes
      get :edit, params: {id: item.to_param}, session: valid_session
      expect(assigns(:item)).to eq(item)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Item" do
        expect {
          post :create, params: {item: valid_attributes}, session: valid_session
        }.to change(Item, :count).by(1)
      end

      it "assigns a newly created item as @item" do
        post :create, params: {item: valid_attributes}, session: valid_session
        expect(assigns(:item)).to be_a(Item)
        expect(assigns(:item)).to be_persisted
      end

      it "redirects to the created item" do
        post :create, params: {item: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Item.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved item as @item" do
        post :create, params: {item: invalid_attributes}, session: valid_session
        expect(assigns(:item)).to be_a_new(Item)
      end

      it "re-renders the 'new' template" do
        post :create, params: {item: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: 'new name', replacement_price: 10.5, quantity: 3, serial_number: 'serial n'}
      }

      it "updates the requested item" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: new_attributes}, session: valid_session
        item.reload
        expect(item.name).to eq('new name')
        expect(item.replacement_price).to eq(10.5)
        expect(item.quantity).to eq(3)
        expect(item.serial_number).to eq('serial n')
      end

      it "assigns the requested item as @item" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: valid_attributes}, session: valid_session
        expect(assigns(:item)).to eq(item)
      end

      it "redirects to the item" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: valid_attributes}, session: valid_session
        expect(response).to redirect_to(item)
      end
    end

    context "with invalid params" do
      it "assigns the item as @item" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: invalid_attributes}, session: valid_session
        expect(assigns(:item)).to eq(item)
      end

      it "re-renders the 'edit' template" do
        item = Item.create! valid_attributes
        put :update, params: {id: item.to_param, item: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested item" do
      item = Item.create! valid_attributes
      expect {
        delete :destroy, params: {id: item.to_param}, session: valid_session
      }.to change(Item, :count).by(-1)
    end

    it "redirects to the items list" do
      item = Item.create! valid_attributes
      delete :destroy, params: {id: item.to_param}, session: valid_session
      expect(response).to redirect_to(items_url)
    end
  end

end
