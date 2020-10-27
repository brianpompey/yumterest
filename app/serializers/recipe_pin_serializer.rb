class RecipePinSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :id, :title, :description, :category, :recipe_link
end
