class WelcomeController < ApplicationController
	skip_filter :ensure_logged_in

end