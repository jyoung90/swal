class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create

    post = Post.new
    post.title = params[:title]
    post.description = params[:description]

    #respond_to do |format|

    #  if post.save

    #    format.html {
    #      flash[:message] = '게시글이 성공적으로 작성되었습니다.'
    #      redirect_to posts_path
    #    }
    #  else
    #    messages = []
    #    post.errors.messages.each_with_index do |msg, idx|
    #      messages.push(msg[1][0])
    #    end

    #    @messages = messages.join('\n')
    #    format.js { render 'new' }
    #  end
    #end


    if post.save
      flash[:message] = '게시글이 성공적으로 작성되었습니다.'
    else
      messages = []
      post.errors.messages.each_with_index do |msg, idx|
        messages.push(msg[1][0])
      end

      @messages = messages.join('\n')
    end

    respond_to do |format|
      format.js
    end
  end

end
