Jekyll::Hooks.register(:site, :post_write) do |_site|
  system("npm run windicss")
end
