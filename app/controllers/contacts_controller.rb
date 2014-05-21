class ContactsController < ApplicationController

    def index
    @contacts = Contact.all
      respond_to do |format|
      format.html
      format.json { render :json => @contacts, :only => 
        [:id, :name, :number, :email, :image] }
    end
  end

  def main
  end

end
