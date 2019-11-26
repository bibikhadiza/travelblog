module Types
  module QueryTypes
    class PostType < BaseObject
      field :title, String, :null => false
      field :content, String, :null => false
      field :location, String, :null => false

      field :user, Types::QueryTypes::UserType, :null => false
    end
  end
end