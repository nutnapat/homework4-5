class MainController < ApplicationController
def posting
    @msg=params['msg']
    @uid=params['user_id']
    Post.create(msg:@msg,user_id:@uid)
end
def reading
    @uid2 = params["user_id"]
    @x=User.find(@uid2).posts
end
end
