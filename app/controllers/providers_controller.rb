class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]

  # GET /providers
  # GET /providers.json
  def index
    @providers = Provider.all
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers
  # POST /providers.json
  def create
    @provider = Provider.new(provider_params)

    
      if @provider.save
         redirect_to @provider, notice: 'Provider was successfully created.' 
        
      else
        render action: 'new' 
        
      end
    
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
  
      if @provider.update(provider_params)
       redirect_to @provider, notice: 'Provider was successfully updated.' 
        
      else
        render action: 'edit' 
        
      end
    
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @provider.destroy
    
      redirect_to providers_url 
      
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
      params.require(:provider).permit(:Name, :Street, :City, :State, :Zip)
    end
end
