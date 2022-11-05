class PagesController < ApplicationController
    def index
        @pages = Page.all
    end

    def new
        @page = Page.new
    end

    def create
        @page = Page.new(page_params)

        if @page.save
            redirect_to pages_path
        else
            render :new
        end
    end

    def show
        @page = Page.find(params[:id])
    end

    def destroy
        @page = Page.find(params[:id])
        @page.destroy

        redirect_to pages_path
    end


    private

    def page_params
        params.require(:page).permit(:title, :body)
    end
end
