class TranslationsController < ApplicationController

  def index
    dictionary  = Dictionary.new(params[:language])
    interaction = interaction(dictionary)
    source      = interaction.source()
    translation = interaction.translate()

    render json: {
      source: source,
      translation: translation
    }
  end

  private

  def interaction(dictionary)
    if params.key?(:from_number)
      number = params[:from_number].to_i
      NumberToWordsTranslation.new(dictionary, number)
    elsif params.key?(:from_words)
      triplet = Triplet.new(params[:from_words])
      WordsToNumberTranslation.new(dictionary, triplet)
    else
      NullTranslation.new()
    end
  end
end
