module Types
  module MutationTypes
    class CreatePost < BaseMutation
      argument :title, String, :required => true
      argument :location_id, String, :required => true
      argument :content, String, :required => true
      argument :user_id, String, :required => true


      field :post, Types::QueryTypes::PostType, null: false

      def resolve(title:, content:, location_id:, user_id:)
        post = Post.create(title: title, content: content, location: Location.find(location_id), user: User.find(user_id))
        { post: post}
      end
    end
  end
end