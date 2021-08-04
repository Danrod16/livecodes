require_relative "../views/meals_view"
require_relative "../views/customers_view"
require_relative "../views/sessions_view"
require_relative "../views/orders_view"

class OrdersController
  def initialize(meal_repo, customer_repo, employee_repo, order_repo)
    @meal_repo = meal_repo
    @customer_repo = customer_repo
    @employee_repo = employee_repo
    @order_repo = order_repo
    @meals_view = MealsView.new
    @customers_view = CustomersView.new
    @sessions_view = SessionsView.new
  end

  def add
    #  1. Get Meals from the repo
      meals = @meal_repo.all # Meals array []
    #  2. Display the meals from the view
      @meals_view.display(meals)
    #  3. ask the user for an index in the view
      meal_index = @meals_view.ask_user_for("index")
    #  4. Get customers from repo
      customers = @customer_repo.all
    #  5. display from view
     @customers_view.display(customers)
    #  6. ask user fora an index from view
      customer_index = @customers_view.ask_user_for("index")
    # 7. Get Riders
      riders = @employee_repo.all_riders
    # 8 . Display riders
    @sessions_view.display(riders)
    # 9. Ask user which rider (index)
    rider_index = @sessions_view.ask_user("index")
    # 10. Instantiate a new order
    order = Order.new(meal: meals[meal_index], customer: customers[customer_index], employee: employees[rider_index])
    # 11. Add to orders repo
    @order_repo.create(order)
  end

  def list_undelivered_orders
    undelivered_orders = @order_repo.undelivered_orders
    @orders_view.display(undelivered_orders)
  end

  def list_my_orders(current_user)
    my_undelivered_orders = @order_repo.my_undelivered_orders(current_user)
    @orders_view.display(my_undelivered_orders)
  end

  def mark_as_delivered(current_user)
)   list_my_orders(current_user)
    # ask the user for which order
    index = @orders_view.ask_user_for("index")
    chosen_order = @order_repo.all[index]
    @order_repo.mark_as_delivered(chosen_order)
  end

  private

  def select_meal

  end

  def select_customer

  end

  def select_employee

  end

  def list_my_undelivered_orders(user)

  end
end
