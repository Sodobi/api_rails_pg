class ApplicationController < ActionController::API
	# Обработка стандартной ошибки запроса к базе данных
	rescue_from ActiveRecord::RecordNotFound do
		render json: { error: 'No such record in Database; check params',
									 status: :not_found,
		}
	end
 # Ошибка 404 not found
	def catch_404
		raise ActionController::RoutingError.new(params[:path])
	end

	rescue_from ActionController::RoutingError do |exception|
		logger.error "Routing error occurred: #{exception}"
		#render plain: '404 Not found', status: 404
		render json: { error: 'No route matches; check routes',
									 status: :no_route,
		}
	end
end
