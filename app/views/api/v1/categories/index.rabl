object false

node(:categories) do
  Category::PREMISES.map { |cat| { key: cat, name: I18n.t("categories.#{cat}") } }
end
