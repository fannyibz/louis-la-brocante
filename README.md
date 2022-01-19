# Louis la brocante  🕰

## Setup
For it's first launch run the following command :

```
bundle install
```
```
yarn install
```

Create the db

```
rails db:create
```

Then run the migrations

```
rails db:migrate
```
Now run the seeds 

```
rails db:seed
```
## Login

You can log with this profil: 

* email: ringo@mail.com
* password: 123456

## Method & Features

#### Feature implemented:
* A user(seller) can create, edit, delete an ad, so he can sell a product.
* A user(buyer) can see a list of all ads, so he can choose a product to buy.
* A user(buyer) can chat with the seller so he can ask for more informations and arrange a transaction.
* A user(seller) can check on one page, all his ads and conversations.

#### Gems
* Devise
* Pundit
* Cloudinary
* Rspec
* ShouldaMatcher
* Factorybot
* Faker

#### With more time, i would:
* Implement all the tests with rspec.
* Ad a state machine, for the publication of an ad, with the gem AASM.
* Implement more features:
  * User profil
  * Sell and buy online with stripe
  * Search bar with elasticsearch
  * Map 

Thanks 🙏,
