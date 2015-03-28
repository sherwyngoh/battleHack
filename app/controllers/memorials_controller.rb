class MemorialsController < ApplicationController
  before_action :set_memorial, only: [:show, :edit, :update, :destroy]

  # GET /memorials
  # GET /memorials.json
  def index
    @memorials = Memorial.all
  end

  # GET /memorials/1
  # GET /memorials/1.json
  def show
    @gb_data = [
      {author: 'Max', comment: 'Lorem Ipsum'},
      {author: 'Sherwyn', comment: 'Lorem Ipsum'},
      {author: 'Fish', comment: 'Lorem Ipsum'},
    ]
  end

  # GET /memorials/new
  def new
    @memorial = Memorial.new
  end

  # GET /memorials/1/edit
  def edit
  end

  # POST /memorials
  # POST /memorials.json
  def create
    @memorial = Memorial.new(memorial_params)

    respond_to do |format|
      if @memorial.save
        format.html { redirect_to @memorial, notice: 'Memorial was successfully created.' }
        format.json { render :show, status: :created, location: @memorial }
      else
        format.html { render :new }
        format.json { render json: @memorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memorials/1
  # PATCH/PUT /memorials/1.json
  def update
    respond_to do |format|
      if @memorial.update(memorial_params)
        format.html { redirect_to @memorial, notice: 'Memorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @memorial }
      else
        format.html { render :edit }
        format.json { render json: @memorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memorials/1
  # DELETE /memorials/1.json
  def destroy
    @memorial.destroy
    respond_to do |format|
      format.html { redirect_to memorials_url, notice: 'Memorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memorial
      @memorial = Memorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memorial_params
      params.require(:memorial).permit(:name, :dob, :dod, :about, :race, :guestbook, :wake, :wake_date, :funeral, :funeral_date, :theme, :religion, :contact_email, :contact_number)
    end
end
