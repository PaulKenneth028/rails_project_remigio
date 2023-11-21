class MyBloggingWebsitesController < ApplicationController
  before_action :set_my_blogging_website, only: %i[ show edit update destroy ]

  # GET /my_blogging_websites or /my_blogging_websites.json
  def index
    @my_blogging_websites = MyBloggingWebsite.all
  end

  # GET /my_blogging_websites/1 or /my_blogging_websites/1.json
  def show
  end

  # GET /my_blogging_websites/new
  def new
    @my_blogging_website = MyBloggingWebsite.new
  end

  # GET /my_blogging_websites/1/edit
  def edit
  end

  # POST /my_blogging_websites or /my_blogging_websites.json
  def create
    @my_blogging_website = MyBloggingWebsite.new(my_blogging_website_params)

    respond_to do |format|
      if @my_blogging_website.save
        format.html { redirect_to my_blogging_website_url(@my_blogging_website), notice: "My blogging website was successfully created." }
        format.json { render :show, status: :created, location: @my_blogging_website }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_blogging_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_blogging_websites/1 or /my_blogging_websites/1.json
  def update
    respond_to do |format|
      if @my_blogging_website.update(my_blogging_website_params)
        format.html { redirect_to my_blogging_website_url(@my_blogging_website), notice: "My blogging website was successfully updated." }
        format.json { render :show, status: :ok, location: @my_blogging_website }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @my_blogging_website.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_blogging_websites/1 or /my_blogging_websites/1.json
  def destroy
    @my_blogging_website.destroy!

    respond_to do |format|
      format.html { redirect_to my_blogging_websites_url, notice: "My blogging website was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_blogging_website
      @my_blogging_website = MyBloggingWebsite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def my_blogging_website_params
      params.fetch(:my_blogging_website, {})
    end
end
