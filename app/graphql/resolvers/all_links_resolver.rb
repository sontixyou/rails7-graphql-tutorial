module Resolvers
  class AllLinksResolver < Resolvers::BaseResolver
    description 'get all links'

    type [Types::LinkType], null: false

    def resolve
      Link.all
    end
    # query {
    #   allLinks {
    #     id
    #     url
    #     description
    #   }
    # }
  end
end
