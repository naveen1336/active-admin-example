class FinderController < ApplicationController
def index
@page_title = 'All Customers'
@customers = Customer.all

end

def alphabetized
	@page_title = 'Alphabetized Customer'
	@customers = Customer.order(:full_name)
	render :index
end

def missing_email
	@page_title = 'Customers missing email address'
	@customers = Customer.where(email_address: '')
	render :index
end


end
