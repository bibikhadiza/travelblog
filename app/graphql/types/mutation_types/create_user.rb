module Types
  module MutationTypes
    class CreateUser < BaseMutation
      argument :name, String, :required => true
      argument :dob, String, :required => true
      argument :location, String, :required => true

      field :user, Types::QueryTypes::UserType, null: false

      def resolve(name:, dob:, location:)
        user = User.create(name: name, dob: dob, location: location)
        { user: user}
      end
    end
  end
end