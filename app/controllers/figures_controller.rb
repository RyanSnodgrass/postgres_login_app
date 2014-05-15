class FiguresController < ApplicationController

	def index
		@figures = Figure.all
	end

	def update
		@figure = Figure.find(params[:id])
		if @figure.converted_pastafarian = false
			if @figure.update_attributes(figure_params)
				respond_to do |format|
					format.js { render plain: "1"}
					format.html { redirect_to figures_path}
				end
			else
				respond_to do |format|
					format.js { render plain: "0"}
					format.html {redirect_to tasks_path, notice: "Conversion failed" }
				end
			end
		else
			@figure.converted_pastafarian = false
			@figure.save
			respond_to do |format|
				format.js { render plain: "1"}
				format.html { redirect_to figures_path}
			end
		end
	end


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
	def figure_params
		params.require(:figure).permit(:converted_pastafarian)
	end


end