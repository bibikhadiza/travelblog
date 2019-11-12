module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_users, [Types::QueryTypes::UserType], :null => false
    def all_users
      User.all
    end

  end
end
