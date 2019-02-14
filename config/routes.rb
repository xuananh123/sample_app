Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    get "/help", to: "static_pages#help"
    get "/home", to: "static_pages#home"
    get "static_pages/about"
    get "static_pages/contact"
    get  "/signup",  to: "users#new"
  end
end
