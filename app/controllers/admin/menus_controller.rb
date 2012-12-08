class Admin::MenusController < ApplicationController
  # GET /admin/menus
  # GET /admin/menus.xml
  def index
    @admin_menus = Admin::Menu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_menus }
    end
  end

  # GET /admin/menus/1
  # GET /admin/menus/1.xml
  def show
    @admin_menu = Admin::Menu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_menu }
    end
  end

  # GET /admin/menus/new
  # GET /admin/menus/new.xml
  def new
    @admin_menu = Admin::Menu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_menu }
    end
  end

  # GET /admin/menus/1/edit
  def edit
    @admin_menu = Admin::Menu.find(params[:id])
  end

  # POST /admin/menus
  # POST /admin/menus.xml
  def create
    @admin_menu = Admin::Menu.new(params[:admin_menu])

    respond_to do |format|
      if @admin_menu.save
        format.html { redirect_to(@admin_menu, :notice => 'Menu was successfully created.') }
        format.xml  { render :xml => @admin_menu, :status => :created, :location => @admin_menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/menus/1
  # PUT /admin/menus/1.xml
  def update
    @admin_menu = Admin::Menu.find(params[:id])

    respond_to do |format|
      if @admin_menu.update_attributes(params[:admin_menu])
        format.html { redirect_to(@admin_menu, :notice => 'Menu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/menus/1
  # DELETE /admin/menus/1.xml
  def destroy
    @admin_menu = Admin::Menu.find(params[:id])
    @admin_menu.destroy

    respond_to do |format|
      format.html { redirect_to(admin_menus_url) }
      format.xml  { head :ok }
    end
  end
end
