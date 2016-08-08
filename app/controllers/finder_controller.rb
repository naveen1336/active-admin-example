class FinderController < ApplicationController
def index
@cutomers = Customer.all
end

end
