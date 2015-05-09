Rails.application.routes.draw do
  
  get '/' => 'mychamp#home'

  get '/matchhistory' => 'mychamp#irl'

end
