class ClientsController < ApplicationController
  def index
    @clients = Client.all
    
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to @client, notice: "Created client."
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      redirect_to @client, notice: "Updated client."
    else
      render :edit
    end
  end
  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end
  private
     # Use callbacks to share common setup or constraints between actions.
     def set_client
       @client = Client.find(params[:id])
     end
end
