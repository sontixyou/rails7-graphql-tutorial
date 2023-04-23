module Mutations
  class UpdatePost < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: false
    argument :body, String, required: false
    # argument :params, Types::Inputs::PostInputType, required: true
    field :post, Types::PostType, null: false

    def resolve(**params)
      post_params = params.to_h
      post = Post.find(post_params.delete(:id))
      post.update!(post_params.compact)
      { post: post }
    end
  end
end
# mutation {
#   updatePost(id: 1, title: "update title32434") {
#     post {
#       id
#       title
#       body
#     }
#   }
# }
