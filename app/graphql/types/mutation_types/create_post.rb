module Types
  module MutationTypes
    class CreatePost < BaseMutation
      argument :title, String, :required => true
      argument :location, String, :required => false
      argument :content, String, :required => true

      field :post, Types::QueryTypes::PostType, null: false

      def resolve(title:, content:, location: nil)
        post = Post.create(title: title, content: content, location: location)
        { post: post}
      end
    end
  end
end