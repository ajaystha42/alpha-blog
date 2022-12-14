class ArticlesController < ApplicationController 

    before_action :authenticate_admin_user!

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create 
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was succesfully created!"
            redirect_to article_path(@article)
        else
            # flash[:danger] = @article.errors.full_messages
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    private 
    def article_params
        params.require(:article).permit(:title, :description)
    end
end