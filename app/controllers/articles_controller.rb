class ArticlesController < ApplicationController
  def new
  	@article = Article.new
  end

  def create
        # ストロングパラメーターを使用
         article = Article.new(article_params)
        # DBへ保存する
         article.save
        # トップ画面へリダイレクト
        redirect_to articles_path
   end

   def index
   	@articles = Article.all
    @article = Article.new
   end

def show
    @article = Article.find(params[:id])
end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end

  private
    def article_params
        params.require(:article).permit(:title, :body, :weather, :image)
    end


end

