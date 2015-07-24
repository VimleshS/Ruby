module CurrentCart
  extend ActiveSupport::Concern


  private
=begin
  def set_cart
    fromSession = session[:cart_id]
    @cart = Cart.find(fromSession['id'])
  #rescue ActiveRecord::RecordNotFound
  rescue
    @cart = Cart.create
    session[:cart_id] = @cart
    return @cart
  end
=end

  def set_cart
    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end


end
