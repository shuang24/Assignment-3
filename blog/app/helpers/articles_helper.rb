module ArticlesHelper
    def article_params
        params.require(:article).permit(:title, :body, :category_list)
    end
end
