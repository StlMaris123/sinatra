require 'sinatra'

before do
  content_type :txt
end

get '/attachment' do
  attachment 'name_your_attachment.txt'
  "Here is what will be sent downstream, in an attachment called 'name_your_attatchment.txt'"
end
