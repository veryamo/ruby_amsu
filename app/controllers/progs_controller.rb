class ProgsController < ApplicationController
  before_action :set_prog, only: [:show, :edit, :update, :destroy]

  # GET /progs
  # GET /progs.json
  def index
    @progs = Prog.all
  end

  # GET /progs/1
  # GET /progs/1.json
  def show
  end

  # GET /progs/new
  def new
    @prog = Prog.new
  end

  # GET /progs/1/edit
  def edit
  end

  # POST /progs
  # POST /progs.json
  def create
    @prog = Prog.new(prog_params)

    respond_to do |format|
      if @prog.save
        format.html { redirect_to @prog, notice: 'Prog was successfully created.' }
        format.json { render :show, status: :created, location: @prog }
      else
        format.html { render :new }
        format.json { render json: @prog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progs/1
  # PATCH/PUT /progs/1.json
  def update
    respond_to do |format|
      if @prog.update(prog_params)
        format.html { redirect_to @prog, notice: 'Prog was successfully updated.' }
        format.json { render :show, status: :ok, location: @prog }
      else
        format.html { render :edit }
        format.json { render json: @prog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progs/1
  # DELETE /progs/1.json
  def destroy
    @prog.destroy
    respond_to do |format|
      format.html { redirect_to progs_url, notice: 'Prog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prog
      @prog = Prog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prog_params
      params.require(:prog).permit(:Название, :Лицензия, :Тип_лицензии, :Лиценз_№)
    end
end
