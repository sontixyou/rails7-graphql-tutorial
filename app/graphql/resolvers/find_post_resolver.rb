module Resolvers
  class FindPostResolver < Resolvers::BaseResolver
    description 'Find post by ID'
    argument :id, ID, required: true

    type Types::PostType, null: false

    def resolve(id:)
      Post.find(id)
    end
    # query {
    #   findPost(id: "1") {
    #     id
    #     title
    #     body
    #   }
    # }
  end
end
