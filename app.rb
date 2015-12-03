require 'sinatra'

configure do
  set :root, File.dirname(__FILE__)
end

helpers do
  MAIN_TITLE = 'Sample App'

  def site_title(sub_title=nil)
    return MAIN_TITLE if sub_title.nil?
    "#{MAIN_TITLE} | #{sub_title}"
  end
end

get '/' do
  @title = site_title
  erb :index
end

get '/about' do
  @title = site_title('About')
  erb :about
end
