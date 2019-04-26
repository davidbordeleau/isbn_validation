class ValidationsController < ApplicationController
  def validate
    if params[:isbn] =~ /^\d{13}$/
      render json: { message: "Le ISBN #{params[:isbn]} est valide." }
    else
      render json: { message: "Le ISBN #{params[:isbn]} n'est pas valide." }
    end
  end
end
