class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    
      if @employee.save
        redirect_to @employee, notice: 'Employee was successfully created.' 
        
      else
        render action: 'new' 
        
      end
    
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    
      if @employee.update(employee_params)
       redirect_to @employee, notice: 'Employee was successfully updated.' 
        
      else
       render action: 'edit' 
        
      end
    
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    
      redirect_to employees_url 
    
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:FirstName, :LastName, :EmployeeId, :EmailAddress, :Department)
    end
end
