Rails.application.routes.draw do
  get "/listings", controller: "listings", action: "index"
  post "/listings", controller: "listings", action: "create"
  get "/listings/:id", controller: "listings", action: "show"
  patch "/listings/:id", controller: "listings", action: "update"
  delete "/listings/:id", controller: "listings", action: "destroy"
end
