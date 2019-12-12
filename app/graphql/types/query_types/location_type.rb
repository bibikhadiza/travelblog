module Types
  module QueryTypes
    class LocationType < BaseObject
      field(:name, String, :null => false)
      field(:continent, String, :null => false)
      field(:posts, [Types::QueryTypes::PostType], :null => false)
    end
  end
end