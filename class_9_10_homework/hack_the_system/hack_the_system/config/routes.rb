Rails.application.routes.draw do

  get '/' => 'welcome#ssmm'

  get '/login' => 'welcome#login'

  get '/mainframe' => 'welcome#mainframe'

  get '/failure' => 'welcome#failure'

end
