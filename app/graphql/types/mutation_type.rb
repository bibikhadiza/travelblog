module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: MutationTypes::CreateUser, :null => false
    field :create_post, mutation: MutationTypes::CreatePost, :null => false
  end
end
