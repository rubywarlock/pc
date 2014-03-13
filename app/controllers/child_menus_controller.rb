class ChildMenusController < ApplicationController
  # GET /child_menus
  # GET /child_menus.json
  def index
    @child_menus = ChildMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @child_menus }
    end
  end

  # GET /child_menus/1
  # GET /child_menus/1.json
  def show
    @child_menu = ChildMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child_menu }
    end
  end

  # GET /child_menus/new
  # GET /child_menus/new.json
  def new
    @child_menu = ChildMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_menu }
    end
  end

  # GET /child_menus/1/edit
  def edit
    @child_menu = ChildMenu.find(params[:id])
  end

  # POST /child_menus
  # POST /child_menus.json
  def create
    @child_menu = ChildMenu.new(params[:child_menu])

    respond_to do |format|
      if @child_menu.save
        format.html { redirect_to @child_menu, notice: 'Child menu was successfully created.' }
        format.json { render json: @child_menu, status: :created, location: @child_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @child_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /child_menus/1
  # PUT /child_menus/1.json
  def update
    @child_menu = ChildMenu.find(params[:id])

    respond_to do |format|
      if @child_menu.update_attributes(params[:child_menu])
        format.html { redirect_to @child_menu, notice: 'Child menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_menus/1
  # DELETE /child_menus/1.json
  def destroy
    @child_menu = ChildMenu.find(params[:id])
    @child_menu.destroy

    respond_to do |format|
      format.html { redirect_to child_menus_url }
      format.json { head :no_content }
    end
  end
end
