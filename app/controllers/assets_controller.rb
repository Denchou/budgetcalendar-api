class AssetsController < OpenReadController
  before_action :set_asset, only: [:show, :update, :destroy]

  # GET /assets
  def index
    @assets = Asset.all

    render json: @assets
  end

  # GET /assets/1
  def show
    render json: Asset.find(params[:id])
  end

  # POST /assets
  def create
    @asset = current_user.assets.build(asset_params)

    if @asset.save
      render json: @asset, status: :created, location: @asset
    else
      render json: @asset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assets/1
  def update
    if @asset.update(asset_params)
      render json: @asset
    else
      render json: @asset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assets/1
  def destroy
    @asset.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset
      @asset = current_user.assets.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def asset_params
      params.require(:asset).permit(:name, :amount, :user_id)
    end
end
