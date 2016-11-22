class TransactionProductRelationshipsController < ApplicationController
  before_action :set_transaction_product_relationship, only: [:show, :edit, :update, :destroy]

  # GET /transaction_product_relationships
  # GET /transaction_product_relationships.json
  def index
    @transaction_product_relationships = TransactionProductRelationship.all
  end

  # GET /transaction_product_relationships/1
  # GET /transaction_product_relationships/1.json
  def show
  end

  # GET /transaction_product_relationships/new
  def new
    @transaction_product_relationship = TransactionProductRelationship.new
  end

  # GET /transaction_product_relationships/1/edit
  def edit
  end

  # POST /transaction_product_relationships
  # POST /transaction_product_relationships.json
  def create
    @transaction_product_relationship = TransactionProductRelationship.new(transaction_product_relationship_params)

    respond_to do |format|
      if @transaction_product_relationship.save
        format.html { redirect_to @transaction_product_relationship, notice: 'Transaction product relationship was successfully created.' }
        format.json { render :show, status: :created, location: @transaction_product_relationship }
      else
        format.html { render :new }
        format.json { render json: @transaction_product_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_product_relationships/1
  # PATCH/PUT /transaction_product_relationships/1.json
  def update
    respond_to do |format|
      if @transaction_product_relationship.update(transaction_product_relationship_params)
        format.html { redirect_to @transaction_product_relationship, notice: 'Transaction product relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction_product_relationship }
      else
        format.html { render :edit }
        format.json { render json: @transaction_product_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_product_relationships/1
  # DELETE /transaction_product_relationships/1.json
  def destroy
    @transaction_product_relationship.destroy
    respond_to do |format|
      format.html { redirect_to transaction_product_relationships_url, notice: 'Transaction product relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_product_relationship
      @transaction_product_relationship = TransactionProductRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_product_relationship_params
      params.require(:transaction_product_relationship).permit(:transaction, :product, :item_count, :price)
    end
end
