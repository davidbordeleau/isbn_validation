Rails.application.routes.draw do

  get 'service/:ibsn/validate', to: 'validations#validate'
end
