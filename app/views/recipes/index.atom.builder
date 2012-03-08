atom_feed do |feed|
  feed.title("The RailsChef News Feed")
  feed.updated(@recipes.first.created_at)
  @recipes.each do |recipe|
    feed.entry(recipe) do |entry|
      entry.title(recipe.title)
      entry.content(recipe.method, :type => 'html')
    end
  end
end