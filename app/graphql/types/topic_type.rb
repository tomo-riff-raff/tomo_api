module Types
  class TopicType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: false
    field :translations, [Types::TopicTranslationType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def translations
      object.translations_for_languages(context[:language_ids])
    end
  end
end
