require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:post) { Post.create(message: 'New Post') }

  it 'includes content and post id' do
    comment = Comment.create(body: "Lorem Ipsum", post_id: post.id)
    expect(comment.body).to eq("Lorem Ipsum")
    expect(comment.post_id).to eq(post.id)
  end

end
