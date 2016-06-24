class XArticlesController < ApplicationController
  before_action :set_x_article, only: [:show, :edit, :update, :destroy]

  # GET /x_articles
  # GET /x_articles.json
  def index
    @x_articles = XArticle.all
  end

  # GET /x_articles/1
  # GET /x_articles/1.json
  def show
  end

  # GET /x_articles/new
  def new
    @x_article = XArticle.new
  end

  # GET /x_articles/1/edit
  def edit
  end

  # POST /x_articles
  # POST /x_articles.json
  def create
    @x_article = XArticle.new(x_article_params)

    respond_to do |format|
      if @x_article.save
        format.html { redirect_to @x_article, notice: 'X article was successfully created.' }
        format.json { render :show, status: :created, location: @x_article }
      else
        format.html { render :new }
        format.json { render json: @x_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /x_articles/1
  # PATCH/PUT /x_articles/1.json
  def update
    respond_to do |format|
      if @x_article.update(x_article_params)
        format.html { redirect_to @x_article, notice: 'X article was successfully updated.' }
        format.json { render :show, status: :ok, location: @x_article }
      else
        format.html { render :edit }
        format.json { render json: @x_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /x_articles/1
  # DELETE /x_articles/1.json
  def destroy
    @x_article.destroy
    respond_to do |format|
      format.html { redirect_to x_articles_url, notice: 'X article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_x_article
      @x_article = XArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def x_article_params
      params.require(:x_article).permit(:title)
    end
end
