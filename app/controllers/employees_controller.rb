class EmployeesController < ApplicationController
 def index
    @employees = Employee.all

 end

#  use watch
def watch 
    @employee = Employee.find(params[:id])
end

end
