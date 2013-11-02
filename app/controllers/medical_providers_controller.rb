class MedicalProvidersController < ApplicationController
  before_action :set_medical_provider, only: [:show, :edit, :update, :destroy]

  # GET /medical_providers
  # GET /medical_providers.json
  def index
    @medical_providers = MedicalProvider.all
  end

  # GET /medical_providers/1
  # GET /medical_providers/1.json
  def show
  end

  # GET /medical_providers/new
  def new
    @medical_provider = MedicalProvider.new
  end

  # GET /medical_providers/1/edit
  def edit
  end

  # POST /medical_providers
  # POST /medical_providers.json
  def create
    @medical_provider = MedicalProvider.new(medical_provider_params)

    
      if @medical_provider.save
         redirect_to @medical_provider, notice: "#{@medical_provider.Specialty} was successfully created."
        
      else
          render action: 'new' 
         
      end
    
  end

  # PATCH/PUT /medical_providers/1
  # PATCH/PUT /medical_providers/1.json
  def update
    
      if @medical_provider.update(medical_provider_params)
        redirect_to @medical_provider, notice: "#{@medical_provider.Specialty} was successfully updated."
        
      else
        render action: 'edit' 
       
      end
    
  end

  # DELETE /medical_providers/1
  # DELETE /medical_providers/1.json
  def destroy
    @medical_provider.destroy
    
       redirect_to medical_providers_url 
     
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_provider
      @medical_provider = MedicalProvider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_provider_params
      params.require(:medical_provider).permit(:Specialty, :string, :street, :City, :Zip)
    end
end
