require_dependency "comments/application_controller"

module Comments
  class CommentsController < ApplicationController
    def index
      @comments = Comment.all
    end

  end
end
