class HomeController < ApplicationController
  def index
  end
  
  def submit
    bubs = Bubbe.create(name: mishpacha_params[:bubbe_name], email: mishpacha_params[:email])
    mishpacha_params[:children].to_h.each { |_, child_params| bubs.children.create(child_params) }
    FormMailer.new.send_results(bubs).deliver
    render json: {success: true}, status: :ok
  end
  
  private
  def mishpacha_params
    params.require(:bubbe).permit(:bubbe_name, :email, children: {})
  end
end
