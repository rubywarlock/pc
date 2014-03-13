class MainMenusController < ApplicationController
  # GET /main_menus
  # GET /main_menus.json
  def index
    @main_menus = MainMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @main_menus }
    end
  end

  # GET /main_menus/1
  # GET /main_menus/1.json
  def show
    @main_menu = MainMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @main_menu }
    end
  end

  # GET /main_menus/new
  # GET /main_menus/new.json
  def new
    @main_menu = MainMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @main_menu }
    end
  end

  # GET /main_menus/1/edit
  def edit
    @main_menu = MainMenu.find(params[:id])
  end

  # POST /main_menus
  # POST /main_menus.json
  def create
    @main_menu = MainMenu.new(params[:main_menu])

    respond_to do |format|
      if @main_menu.save
        format.html { redirect_to @main_menu, notice: 'Main menu was successfully created.' }
        format.json { render json: @main_menu, status: :created, location: @main_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @main_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /main_menus/1
  # PUT /main_menus/1.json
  def update
    @main_menu = MainMenu.find(params[:id])

    respond_to do |format|
      if @main_menu.update_attributes(params[:main_menu])
        format.html { redirect_to @main_menu, notice: 'Main menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @main_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_menus/1
  # DELETE /main_menus/1.json
  def destroy
    @main_menu = MainMenu.find(params[:id])
    @main_menu.destroy

    respond_to do |format|
      format.html { redirect_to main_menus_url }
      format.json { head :no_content }
    end
  end
end
