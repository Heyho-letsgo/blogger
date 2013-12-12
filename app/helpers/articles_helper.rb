module ArticlesHelper
	# Cette action dit que params 
	# n'autorise que deux champs "title" et "body"
  def article_params
    params.require(:article).permit(:title, :body)
  end

end
