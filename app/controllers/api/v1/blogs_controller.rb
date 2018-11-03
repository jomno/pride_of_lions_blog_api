module Api::V1
  class BlogsController < ApiController
    def index
      @blogs = Blog.all
      render json: @blogs, status: :ok
    end

    def create
    end
  end
end
