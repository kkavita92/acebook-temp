require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  let(:valid_attributes) {
  skip("Add a hash of attributes valid for your model")
}

let(:invalid_attributes) {
  skip("Add a hash of attributes invalid for your model")
}
  let(:valid_session) { {} }

  before(:each) do
    sign_in
  end

  describe "GET #new" do
    it "assigns a new comment as @comment" do
      get :new, params: {}, session: valid_session
      expect(assigns(:comment)).to be_a_new(Comment)
    end
  end

end
