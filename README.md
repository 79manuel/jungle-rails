# Jungle

A mini e-commerce application built with Rails 4.2 where user can make purchases and create reviews when logged in. Users with Admin access can create and delete both products and categories.

## Final Product
!["Screenshot of Categories Screen"](https://github.com/79manuel/jungle-rails/blob/master/docs/categories_screen.png)
!["Screenshot of My Cart Screen"](https://github.com/79manuel/jungle-rails/blob/master/docs/My_cart.png)
!["Screenshot of After Purchase Screen"](https://github.com/79manuel/jungle-rails/blob/master/docs/after_purchase.png)
!["Screenshot of Create Category Screen"](https://github.com/79manuel/jungle-rails/blob/master/docs/create_category.png)
!["Screenshot of Delete Review Screen"](https://github.com/79manuel/jungle-rails/blob/master/docs/review_deleted.png)

## Setup

2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
