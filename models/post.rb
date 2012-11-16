class Post
  include DataMapper::Resource

  # property :id          , Serial

  property :slug        , String      , key: true, unique_index: true, default: lambda { |resource, prop| resource.title.downcase.gsub " ", "-" }
  property :title       , String      , required: true
  property :content     , Text

  property :created_at  , DateTime
  property :updated_at  , DateTime
end