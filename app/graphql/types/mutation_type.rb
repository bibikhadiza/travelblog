module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: MutationTypes::CreateUser, :null => false
  end
end
