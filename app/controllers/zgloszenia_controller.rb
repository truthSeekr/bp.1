class ZgloszeniaController < ApplicationController
  before_action :set_zgloszenium, only: [:show, :edit, :update, :destroy]

  # GET /zgloszenia
  # GET /zgloszenia.json
  def index
    @zgloszenia = Zgloszenium.all
  end

  # GET /zgloszenia/1
  # GET /zgloszenia/1.json
  def show
  end

  # GET /zgloszenia/new
  def new
    @zgloszenium = Zgloszenium.new
  end

  # GET /zgloszenia/1/edit
  def edit
  end

  # POST /zgloszenia
  # POST /zgloszenia.json
  def create
    @zgloszenium = Zgloszenium.new(zgloszenium_params)

    respond_to do |format|
      if @zgloszenium.save
        format.html { redirect_to @zgloszenium, notice: 'Zgloszenium was successfully created.' }
        format.json { render :show, status: :created, location: @zgloszenium }
      else
        format.html { render :new }
        format.json { render json: @zgloszenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zgloszenia/1
  # PATCH/PUT /zgloszenia/1.json
  def update
    respond_to do |format|
      if @zgloszenium.update(zgloszenium_params)
        format.html { redirect_to @zgloszenium, notice: 'Zgloszenium was successfully updated.' }
        format.json { render :show, status: :ok, location: @zgloszenium }
      else
        format.html { render :edit }
        format.json { render json: @zgloszenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zgloszenia/1
  # DELETE /zgloszenia/1.json
  def destroy
    @zgloszenium.destroy
    respond_to do |format|
      format.html { redirect_to zgloszenia_url, notice: 'Zgloszenium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zgloszenium
      @zgloszenium = Zgloszenium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zgloszenium_params
      params.require(:zgloszenium).permit(:imie, :nazwisko, :miasto, :adres, :telefon, :email, :data_urodzenia, :wiadomosc, :zaliczka, :oplacony, :kurs_id)
    end
end
