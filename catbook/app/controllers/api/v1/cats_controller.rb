module Api
  module V1
    class CatsController < ApplicationController
      def index
        render json: Cat.includes(:hobbies), include: ['hobbies']  
        # cats = Cat.order(created_at: :desc)
        # render json: { status: 'SUCCESS', message: 'loaded cats', data: cats }, status: :ok
      end
    end
  end
end
