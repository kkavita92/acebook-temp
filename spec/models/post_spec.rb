require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(email: 'hello@123.com') }

  it 'includes content and post id' do
    post = Post.create(message: 'Lorem Ipsum', user_id: user.id)
    expect(post.message).to eq("Lorem Ipsum")
    expect(post.user_id).to eq(user.id)
  end
end
