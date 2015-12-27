class SearchController < ApplicationController
  def index
    current_user = User.find_by_id(session[:current_user_id])
    @x= Transact.order(:amount)
    respond_to do |format|
      format.html
      format.csv{send_data @x.to_csv}
    end
  end
  def date
    @date = Transact.all
    @x=201215
    @z=0
    respond_to do |format|
      format.html
      format.csv{send_data Transact.to_csv(@x,@z)}
    end
  end
  def vendor
    @date = Transact.all
    @z=2
    @x=0
    respond_to do |format|
      format.html
      format.csv{send_data Transact.to_csv(@x,@z)}
    end
  end
  def both
    @date = Transact.all
    @x=201215
    @z=1
    respond_to do |format|
      format.html
      format.csv{send_data Transact.to_csv(@x,@z)}
    end
  end
end
