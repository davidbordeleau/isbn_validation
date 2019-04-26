Rails.application.routes.draw do

  get 'service/:isbn/validate', to: 'validations#validate'
end
