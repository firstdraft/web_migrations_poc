class Web::TablesController < ApplicationController
  before_action :set_web_table, only: [:show, :edit, :update, :destroy]

  # GET /web/tables
  # GET /web/tables.json
  def index
    @tables = ActiveRecord::Base.connection.tables.map do |x|
      x.classify.safe_constantize
    end.compact

    @most_columns = @tables.map { |t| t.columns.count }.max
  end

  # GET /web/tables/1
  # GET /web/tables/1.json
  def show
  end

  # GET /web/tables/new
  def new
    @web_table = Web::Table.new
  end

  # GET /web/tables/1/edit
  def edit
  end

  # POST /web/tables
  # POST /web/tables.json
  def create
    @web_table = Web::Table.new(web_table_params)

    respond_to do |format|
      if @web_table.save
        format.html { redirect_to @web_table, notice: 'Table was successfully created.' }
        format.json { render :show, status: :created, location: @web_table }
      else
        format.html { render :new }
        format.json { render json: @web_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web/tables/1
  # PATCH/PUT /web/tables/1.json
  def update
    respond_to do |format|
      if @web_table.update(web_table_params)
        format.html { redirect_to @web_table, notice: 'Table was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_table }
      else
        format.html { render :edit }
        format.json { render json: @web_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web/tables/1
  # DELETE /web/tables/1.json
  def destroy
    @web_table.destroy
    respond_to do |format|
      format.html { redirect_to web_tables_url, notice: 'Table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_table
      @web_table = Web::Table.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_table_params
      params.fetch(:web_table, {})
    end
end
