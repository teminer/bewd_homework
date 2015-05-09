Rails.application.routes.draw do
  
  get '/' => 'welcome#home'

  post '/matchhistory' => 'welcome#irl'

end
