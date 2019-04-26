class ValidationsController < ApplicationController
  def validate
    if params[:isbn] =~ /^(978|979)\d{10}$/ && last_digit_valid?(params[:isbn])
      render json: { message: "Le ISBN #{params[:isbn]} est valide." }
    else
      render json: { message: "Le ISBN #{params[:isbn]} n'est pas valide." }
    end
  end

  def last_digit_valid?(isbn)
    isbn = isbn.to_s.split('')
    index = 0
    total = 0

    while index < 11
      total += isbn[index].to_i + isbn[index + 1].to_i * 3
      index += 2
    end
    total = total.to_s.split('').last
    isbn.last.to_i == 10 - total.to_i
  end
end
