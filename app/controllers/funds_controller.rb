# coding: utf-8

class FundsController < ApplicationController
  before_action :set_fund, only: [:show, :edit, :update, :destroy]

  # GET /funds
  # GET /funds.json
  def index
    @funds = Fund.all
  end

  # GET /funds/1
  # GET /funds/1.json
  def show
    @fund = Fund.find(params[:id])
  end

  # GET /funds/new
  def new
    @fund = Fund.new
  end

  # GET /funds/1/edit
  def edit
    @fund = Fund.find(params[:id])
  end

  # POST /funds
  # POST /funds.json
  def create
    @fund = Fund.new(fund_params)

    respond_to do |format|
      if @fund.save
        format.html { redirect_to @fund, notice: '追加しました' }
        format.json { render :show, status: :created, location: @fund }
      else
        format.html { render :new }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funds/1
  # PATCH/PUT /funds/1.json
  def update
    respond_to do |format|
      if @fund.update(fund_params)
        format.html { redirect_to @fund, notice: '変更しました' }
        format.json { render :show, status: :ok, location: @fund }
      else
        format.html { render :edit }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funds/1
  # DELETE /funds/1.json
  def destroy
    @fund.destroy
    respond_to do |format|
      format.html { redirect_to funds_url, notice: '削除しました' }
      format.json { head :no_content }
    end
  end

  private
  def check_logined
    if session[:usr] then
      begin
        @usr = User.find(session[:usr])
      rescue ActiveRecord::RecordNotFound
        reset_session
      end
    end
    unless @usr
      flash[:referer] = request.fullpath
      redirect_to :controller => 'login', :action => 'index' 
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_fund
      @fund = Fund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_params
      params.require(:fund).permit(:id, :name, :email, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec, :jan, :feb, :mar)
    end
end
