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
end
