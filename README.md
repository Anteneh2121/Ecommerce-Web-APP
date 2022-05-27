# Ecommerce-web_App

**full fluged web application using python flask framework
Mobile-Ecommerce Web application
*It An ecommerce solution for most of your electronic needs. 

**Project Overview**

* Ecommerce-web-application is  type of ecommerce solution that involves customer gathering goods, collecting information on the goods and receiving these 
 products over an electronic network.
* ● It t specializes in online retail of electronics such as mobiles,laptops,tv,computers etc. It enables users to easily buy electronics over digital media.

* ● The system allows user to shop year around 24/7 without having to worry about anything.

* ● User can select products from various categories and different vendors.Project Overview(Contd.)


* ● Retailers are part of an integrated system called the supply-chain which is again the management of the flow of goods and services,that involves the   movement and storage of raw materials, of work-in-process inventory, and of finished goods from point of origin to point of consumption.
**Our Mission**
* “When we successfully create a connection with the customers and employees, many of them might stay loyal for life -- and have the chance to increase the overall profitability while delivering maximum customer satisfaction.”
* Ecommerce-web-app is just a small initiative towards this belief.
**Targeted Users**

* The target users for this project are the customers who are in the online retail market to buy electronic products such as tv,computer,phones with quality and best services.

* The customers will largely be using the application for purchase purposes but are always able to browse through the products and get the relevant information without actually having to make a purchase.

* Another user for the application would be the admin who will do day-to-day administration activities such as adding products,blacklisting users or have a look at the statistical analysis of the products sold. 
* Database design- ER Diagram 2.0
* Functional Requirements
*  Project Scope
* Design Goals:The application consists of mainly 3 flows - 
Flow #1 -
View Home Page
Browse products
View Product Details
Become a Member through Registration process
Login to registered account
 Login to site
 Add to cart
Home Page
User Login
User Registration/ Sign Up
User Registration - Empty Field
User Registration - Password don’t match
User Logged Home Page
Signout/My Profile/My Order
Category Browsing Page
Product Landing Page
Product Added in Cart
Cart Panel (Flow #2):-
View cart product
Remove Product from cart
Checkout 
Make Payment
Order Details
Text And Email Confirmation
Visualization - python graphs
Products currently in cart 
On hovering and clicking remove product 
highlights
 Products Removed /Empty Cart
Added 2 products and verifying Grand 
Total User clicks on proceed to checkout
Various Validations on page


Product currently buying and various dropdowns
When user enters correct details and clicks 
on make payment page→ Orderdetails
Email and text 
confirmation are 
delivered to user!
See Trends-Graphs!
Top 3 most selling products
Top 3 least selling products
Admin Panel (Flow #3)
Categories
Create, Read, Update, Delete
Products
Create, Read, Update, Delete
Users
View users & show the number of orders that they have placed
Admin homepage
List of categories
Add, update, delete categories
List of products
Add and update product
View product (admin)
List of users
Challenges/ Obstacles 
1. Text confirmation to mobile phone number
Tried 3 different ways to implement this, but only succeeded with one:-
First one was with third party library that is “TWILIO”, I wrote code and debugged and 
debugged only to realise that trial membership doesn't really allow us to send actual 
messages and only test to some registered number. So, in order to use this we would have 
to buy their product
Second, I tried “TextMagic”. No real magic there, lots of unknown libraries that werent 
there in anaconda,so in order to use this we would have to incorporate the library in our 
project. That would make it messy.
Lastly the saviour, a hack. I used “SMStoEmail” gateway to send messages using smptplib 
which is really pretty cool with a downside, message sender is an email 
address.Nonetheless does the job.
Challenges/ Obstacles 2
1. Setting Up/Configuring flask-SQLAlchemy ORM along with RAW MYSQL DB 
connection within same project
2. Defining flask session at per user login level instead of overall level and changing it’s 
default value
3. Loading dependent (parent-child related) javascript values on user registration page (still 
not able to figure on how to read values directly from DB in javascript files)
Out Of Scope/Future Scope
An ecommerce database is a vast database where in many areas play important role such as 
delivery,shipment,vendors etc. Hence,in this ever evolving world that we live in there is always 
scope for improvements and adding more features to any application.
Our app is no different, in fact we think it can do so much more but we tried our best in whatever 
the time permitted us to.
One of these enhancements that we envisioned was that of adding the ability to use coupons at 
checkout which everyone loves these days. We created a schema for it but unfortunately 
because of time limitations we weren't able to implement it.
Here is a look at what this would have been!
Product blacklisting/Unavailability
Maintaining multiple level of hierarchy in 
organization
Non-Functional Requirement
Non Functional Requirements for 
website
Reliability/Availability
The system has to be online 24 hours a day, 7 days a week. There is no place for an extended 
downtime.
Security 
There has to be clearly defined roles of the users. These roles are 'customer’ and 'administrator'.
Usability
The user interface of the system has to be very user friendly. The application works best in 
Google Chrome.
Integrity
The system must be able to protect and preserve transactions.
Version Control System
Git - 
https://github.com/Anteneh2121/Ecommerce-Web_App
Feature Branch Technique

Project Structure
Configurations
config.yaml
Thank You
