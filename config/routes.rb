# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  post 'home/submit'
  root to: 'home#index'
end
