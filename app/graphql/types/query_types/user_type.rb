module Types
  module QueryTypes
    class UserType < BaseObject
      field(:name, String, :null => false)
      field(:dob, String, :null => false)
      field(:location, String, :null => false)
      field(:posts, [Types::QueryTypes::PostType], :null => false)
    end
  end
end