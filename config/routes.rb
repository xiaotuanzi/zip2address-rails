Zip2addressRails::Application.routes.draw do
  match "sample", to: "sample#index"
  match "sample/find_address", to: "sample#find_address"
end
