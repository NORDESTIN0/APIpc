class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotDestroyed, with: :nor_destroyed

    private
    def nor_destroyed(e)
        render json: {errors: e.record.errors}, status: :unprocessable_entity
    end
end
