class FiguresController < ApplicationController

	# GET /index
	# grabs all figures out of the DB and sends to the view
	def index
		@figures = Figure.all
	end

	# PUT /figure/:id
	# finds the relative figure through the url params
	# toggles the 'converted pastafarian' column between true and false
	# redirects back to the view with json success/failure binary
	def update
		@figure = Figure.find(params[:id])
		if @figure.update_attributes(figure_params)
			respond_to do |format|
				format.js { render plain: "1"}
				format.html { redirect_to figures_path}
			end
		else
			respond_to do |format|
				format.js { render plain: "0"}
				format.html {redirect_to figures_path, notice: "Conversion failed" }
			end
		end
	end
		# else
		# 	@figure.converted_pastafarian = false
		# 	@figure.save
		# 	respond_to do |format|
		# 		format.js { render plain: "1"}
		# 		format.html { redirect_to figures_path}
		# 	end
		# end

	# DESTROY /figures/:id
	# receives id from the url params and deletes the record from the DB
	# In early stages of the app, the user could destroy the physical record of the 
	#   figure on the database.
	# now that everyone will have access to the DB, the javascript hides the view until
	#   page refresh
	def destroy
		@figure = Figure.find(params[:id])
		if @figure.destroy
			respond_to do |format|
				format.js { render plain: "1"}
				format.html { redirect_to figures_path}
			end
		else
			respond_to do |format|
				format.js { render plain: "0"}
				format.html {redirect_to tasks_path, notice: "SHUN failed" }
			end
		end
	end

	private

	# defines the params permitted by the 'def update' method
	def figure_params
		params.require(:figure).permit(:converted_pastafarian)
	end


end