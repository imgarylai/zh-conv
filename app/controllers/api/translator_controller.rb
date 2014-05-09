module Api
  class TranslatorController < Api::BaseController

    def translate
      source = params[:source]
      location = params[:location]
      @ori = "#{source}"
      @result = {:source => @ori, :result => convert(source, location), success: true }
      respond_to do |format|
        format.json { render json: @result, head: :ok }
      end
  end

  protected

  def convert(source, location)
    case location
    when 'tw'
      result = Zh.to_tw source
    when 'sg'
      result = Zh.to_sg source
    when 'hk'
      result = Zh.to_hk source
    when 'cn'
      result = Zh.to_cn source
    end
    result
  end

  private

  def post_params
    params.require(:post).permit(:source, :option)
  end

  end
end
