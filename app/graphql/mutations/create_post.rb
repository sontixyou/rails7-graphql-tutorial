module Mutations
  class CreatePost < BaseMutation
    # 返り値を指定するために必要
    field :post, Types::PostType, null: false
    # こちらの書き方でもOK
    # type Types::PostType

    argument :body, String, required: true
    argument :title, String, required: true

    def resolve(**params)
      post = Post.create!(params)
      { post: post }
    end
    # mutation {
    #   createPost(title: "title2", body: "body2") {
    #     id
    #     title
    #     body
    #    }
    # }
  end
end
