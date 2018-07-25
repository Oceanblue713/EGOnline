class WordsController < ApplicationController
  def index
    @words = Word.all
    #@categories = @words.category_id
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      flash[:success] = "The word correctly saved"
      redirect_to @word
    else
      flash.now[:danger] = "The word didn't save"
      render :new
    end
  end

  def edit
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])

    if @word.update(word_params)
      flash[:success] = "The word correctly updated"
      redirect_to @word
    else
      flash.now[:danger] ="The word didn't update"
      render :edit
    end
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    flash[:danger] ="Word was deleted"
    redirect_to words_url
  end

  private

  def word_params
    params.require(:word).permit(:English,:Japanese,:category)
  end
end
