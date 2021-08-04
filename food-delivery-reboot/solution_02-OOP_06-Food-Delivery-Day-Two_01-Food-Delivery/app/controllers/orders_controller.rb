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
    @orders_view = OrdersView.new
  end

  def add
  meal = select_meal
  customer = select_customer
  employee = select_employee
  # 10. Instantiate order
    order = Order.new(meal: meal, customer: customer, employee: employee)
  # 11. Add to repository
    @order_repo.create(order)
  end

  def list_undelivered_orders
    # 1. Get undelivered orders (order repo)
    undelivered_orders = @order_repo.undelivered_orders
    # 2. Display orders (orders view)
    @orders_view.display(undelivered_orders)
  end

  def list_my_orders(current_user)
    list_my_undelivered_orders(current_user)
  end

  def mark_as_delivered(current_user)
    list_my_undelivered_orders(current_user)
    index = @orders_view.ask_user_for_index
    my_orders = @order_repo.my_undelivered_orders(current_user)
    order = my_orders[index]
    @order_repo.mark_as_delivered(order)
  end

  private

  def select_meal
    # 1. Get meals
    # 2. Display meals
    # 3. Ask user for index
    meals = @meal_repo.all
    @meals_view.display(meals)
    index = @orders_view.ask_user_for_index
    return meals[index]
  end

  def select_customer
    # 4. Get customers
    # 5. Display customers
    # 6. Ask user for index
    customers = @customer_repo.all
    @customers_view.display(customers)
    index = @orders_view.ask_user_for_index
    return customers[index]
  end

  def select_employee
    # 7. Get riders
    # 8. Display riders
    # 9. Ask user for index
    employees = @employee_repo.all_riders
    @sessions_view.display(employees)
    index = @orders_view.ask_user_for_index
    return employees[index]
  end

  def list_my_undelivered_orders(user)
    orders = @order_repo.my_undelivered_orders(user)
    @orders_view.display(orders)
  end
end
