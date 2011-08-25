class PagesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    #if Page.find_by_permalink(params[:permalink])
    #  @page = Page.find_by_permalink(params[:permalink])
    #else
      @page=Page.find(params[:id])
    #end
    @title = @page.name
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @page }
    end
  end

  # GET /pages/1/edit
  def edit
     #if params[:permalink]
    #   @page = Page.find_by_permalink(params[:permalink])
     #else
       @page=Page.find(params[:id])
    # end
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, :notice => 'Page was successfully created.' }
        format.json { render :json => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.json { render :json => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    #if params[:permalink]
    #  @page = Page.find_by_permalink(params[:permalink])
    #else
      @page=Page.find(params[:id])
    #end

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to "/#{@page.permalink}", :notice => 'Page was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    #if params[:permalink]
    #  @page = Page.find_by_permalink(params[:permalink])
    #else
      @page=Page.find(params[:id])
    #end
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :ok }
    end
  end
end
