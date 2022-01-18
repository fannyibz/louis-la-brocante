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
#### Login
* email: ringo@mail.com
* password: 123456


##Feature implemented:
* A user(seller) can create, edit, delete an ad, so he can sell a product.
* A user(buyer) can see a list of all ads, so he can choose a product to buy.
* A user(buyer) can chat with the seller so he can ask for more informations and arrange a transaction.
* A user(seller) can check on one page, all his ads and conversations.

##Features to implement:
* User profil
* Sell and buy online with stripe
* Search bar with elasticsearch
* Map

##With more time, i would:
* implement all the tests with rspec.
* create a state machine, for the publication of an ad.





I defined the project and created a roadmap that I put on [Github project](https://github.com/junkiesan/s-test/projects/1).
Here you will find every tickets I realized and thought about. They are linked to issues, themselves linked to pull requests. Even though I worked alone, I tried to contribute to this project as if I was in a team.

### [Here is the link to the figma:](https://www.figma.com/file/1eJFbAIDZC5SWD1yLPYpcM/Quizzator?node-id=0%3A1)
* a moodboard
* Quizzator game page
* responsive design for mobile

![](quizzator_home.png)

I also thought about the database and I made this database schema.

![](quizzator_db.png)
