class Api::TranslatorController < Api::BaseController

  def translate
  end

  private

  def post_params
    params.require(:post).permit(:source, :option)
  end

end
