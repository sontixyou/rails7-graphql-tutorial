module Types
  module Inputs
    class PostInputType < Types::BaseInputObject
      argument :id, Int, required: true
      argument :title, String, required: false
      argument :body, String, required: false
    end
  end
end
