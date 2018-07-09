class TranslationsController < ApplicationController
  before_action :set_translation, only: [:show, :edit, :update, :destroy]
  before_action :set_content, only: [:new, :create, :edit, :update, :destroy]

  def index
    @translations = Content.find(params[:content_id]).translations
  end

  def show
  end

  def new
   @translation = @content.translations.new
  end

  def edit
  end

  def create
    @translation = @content.translations.build(translation_params)
    respond_to do |format|
      if @translation.save
        format.html { redirect_to content_path(@content), notice: 'Translation was successfully created.' }
        format.json { render :show, status: :created, location: @translation }
      else
        format.html { render :new }
        format.json { render json: @translation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @translation.update(translation_params)
        format.html { redirect_to @content, notice: 'Translation was successfully updated.' }
        format.json { render :show, status: :ok, location: @translation }
      else
        format.html { render :edit }
        format.json { render json: @translation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @translation.destroy
    respond_to do |format|
      format.html { redirect_to @content, notice: 'Translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_translation
    @translation = Translation.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def set_content
    @content = Content.find(params.require(:content_id))
  end

  def translation_params
    params.require(:translation).permit(:content_id, :to_lang)
  end
end
