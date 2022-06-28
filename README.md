This is a customer complain portal
On this portal, the customers from about 3 branches makes a report, or lays complaints, the general managers sees the complain the branch is coming from and the name of that branch manager.
Is a simple CRUD app, no much integration.

You run it , Do the list below

1. Unizip the file,
2. create the database and add the config to your .evn file, you can use the sample .env.example file give and run   
3. run composer install or composer dump autoload
4. php artisan key:generate
5. php artisan migrate --seed
6. make sure you have php 7.4 and above
    run php artisan serve

To login 
    login with 
  Email: admin@gmail.com
  password: password
When you vist 
    http://127.0.0.1:8000/login
Once you login as admin

create a new branch
create a manager
create a customer 
and checkout other feature


    Handled with Laravel  Jetbrain & Sanctium

Author : Emmanuel Chidera



