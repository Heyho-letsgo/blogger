class ArticlesController < ApplicationController
	def index
		#Cette méthode dit
		# à serveur/articles affiche tout ce qu'il y a
		# dans la Table Article
		@articles = Article.all
	end

	def show
		#Cette méthode dit
		# Affiche l'article qui est égal
		# identifiant
		@article = Article.find(params[:id])
	end
		#Cette méthode dit
		# Affiche la page new
	def new
		@article = Article.new
	end
		#Cette méthode dit
		# Crée et Sauve les valeurs saisies
	def create
		@article = Article.new
			(
		 	title: params[:article][:title],
    		body: params[:article][:body]
    		)
  		@article.save
  redirect_to article_path(@article)

	end

end
