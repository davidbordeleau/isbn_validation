class ValidationsController < ApplicationController
  def validate
    if params[:isbn] =~ /^(978|979)\d{6}$/
      render json: { message: "Le ISBN #{params[:isbn]} est valide." }
    else
      render json: { message: "Le ISBN #{params[:isbn]} n'est pas valide." }
    end
  end
end


