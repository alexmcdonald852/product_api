# Product API

This product api depends on `postgres` being installed already. To run the api follow all steps below:

1. Ensure you have ruby version `2.6.3` installed
2. Ensure you have the bundler gem installed `gem install bundler`
3. Run `bundle install`
4. Run `bundle exec rake db:create db:schema:load`
5. Run `rails console` to add some starting categories e.g. `Category.create name: 'Category 1'`
6. Run `rake routes` to see the created endpoints (they follow basic REST structure)
6. Run `rails server` to run the api


## Next steps

In the interest of keeping with the recommended development time a lot of functionality has been skipped and excluded. This includes:

* Prices being displayed as currency instead of raw decimals
* Adding the ability to create a product with a category name instead of id and display the name instead of id in responses
* Unit tests, my framework of choice is `rspec` however I didn't have time to include it.
* Productionising 
    * Supplying user friendly errors
    * Suppressing application details in errors (I believe rails does this automatically but it's worth checking and providing better errors anyway)
    * Deployment requirements (docker etc)
    * Use of non default gems
    * API versioning

If you are unhappy with the level of completion or would like to see examples of some of these things feel free to contact me and request it.
