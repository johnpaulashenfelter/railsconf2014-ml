# Machine Learning for Fun and Profit (with Ruby) -- The Talk

## Intro

Machine learning. Big Data. Data science.

Now that many online businesses operate at "web scale" and collect data about every aspect of their operation, the ability to *do something* with all that data is getting a lot of attention. And even after sorting through the hype from vendors, there's certainly value in that data and the tools that unlock it. 

[The Underwear Gnomes: Step 2 is often data science]

There are a *LOT* of tools involved in the data science world and Ruby really isn't one of the major players. Python is probably the most common general purpose language while the more specialized mathematical languages like Julia, R, Octave (FOSS clone of Matlab) play a crucial role. There are also specialized databases (InfluxDB, the new WebScaleSQL engine for MySQL), specialized platforms (Hadoop and friends), and even specialized _hardware_ for data science.

This workshop is going to ease you into the world of data science and machine learning by focusing on something we've all seen in nearly every Rails application -- the Users table. We are going to use Ruby to apply an array of different tools and techniques to our Users table to extract useful data that can guide real business and operational decisions.

### Format
We're going to walk through a set of exercises that starts with a real question from the business team and then find a way to answer the question with the data we have in the Users table. I'm going walk through the steps and then we're each going to implement it, though you're welcome to work together in pairs. 

### Setup

I'm assuming you have a Ruby install and are familiar with bundler. You're welcome to use your own users table, but I'm supplying a simple one in sqlite3 format (along with MySQL and Postgresql and CSV). One of our gems *requires Ruby 1.9.3* -- I use 1.9.3-p194 -- and is sensitive to underlying C bindings. I am not much of a C programmer and since the C then binds to Fortran under the hood, I'm out of my depth dealing with it :)

You should be able to clone the git repository and run bundler in the root directory which should give us everything we need. If you only have ruby 2.0+, you can change the ruby version in your Gemfile and we'll just skip over the problematic gems.

## Exercise 1: Gender

Question: We're going to sell logo T-shirts. What proportion of women's cut T-Shirts should we order?

Let's think about your signup form -- do you ask for a gender? [Sidenote: How many? Facebook offers ~50 different options now]. Do you even *want* to? Asking more questions can slow the signup process, reduce your conversion rate, and doesn't help backfill your information.

What are the solutions?

* Start asking the question, add it to profile (completeness %, etc)
* A sample survey, possibly with a bonus/contest
* Other ideas?

Our first question is about value -- while its a no-brainer to gain some goodwill by offering a t-shirt cut for women, we are not an ecommerce company and don't have space in our startup for dealing with a lot of inventory nor do we want to order in small one-off batches. Our vendor knows how to handle the distribution of sizes but we'd like to get a solid guess about the gender difference.

We don't have to have an exact number -- we're probably fine with a percentage that's rounded to the nearest 5 or even 10%. We can assume 50/50, but we'd now we're also curious about the gender ratio for fun.

How can we decide _today_? And without spending a lot of money on a survey, marketing data, or some other expensive or timeconsuming option?




## Exercise 2: Geolocation
## Exercise 3: Grouping (Categorization)
## Exercise 4: Similarity
## Bonus: Data Warehousing - Star Schema for Users
## Bonus: Tools of the trade: Julia, Python, R, Octave, etc
## Bonus: Using R with Ruby
## Bonus: Frontiers



## The proposal

### Abstract:

Your Rails app is full of data that can (and should!) be turned into useful information with some simple machine learning techniqiues. We'll look at basic techniques that are both immediately applicable and the foundation for more advanced analysis -- starting with your Users table.

We will cover the basics of assigning users to categories, segmenting users by behavior, and simple recommendation algorithms. Come as a Rails dev, leave a data scientist.

### Details:

My goal is to show Rails developers they can use machine learning techniques without leaving the comfort of Ruby and Rails. Nearly all Rails applications have a Users table of some kind and we'll use that common starting point to demonstrate a few simple yet powerful techniques for machine learning.

Our first task is to assign users to male and female categories based on their first name. We'll use a library for this but look at the techniques that make it work. Participants should be able to immediately apply this to their own apps.

Our next technique will let us cluster users using a hierarchical technique. This technique can be used to segment users based on specific attributes, such as overlapping beliefs, values, or behaviors.

Finally we'll look at using K-means to recommend similar content (eg blog posts) to users based on their reading behavior.

I'm going to do as much of this as possible with real data from users in the audience -- assuming we can get solid enough internet access that they can fill out a form.

As a bonus, we can talk about integrating R into Rails applications if there's any interest.

## TL;DR

Every app has a users table.

### Gender

* Gender can be assigned based on first-name. Based on census/reporting data, normalized by country.
* Five options: male, female, mostly_male/female, unknown (andy)
* Original c code and data written 5y ago by [citation needed]
* YMMV!!!!! Hello Kim Stanley Robinson. John Paul is "andy"

### Location

* Plenty of FOSS options, also paid. Can use http://freegeoip.net locally!
* Store it when they login, track over time. Not a dw talk tho

### Grouping/Hiearchy

* Many ways to generate groups, but generally you map to N-dimensional space and calculate a distance between each group (cluster). Merge the closest and repeat.

#### Simple cluster
* Finding your rockstar users by badges

#### More complex clustering
* breaking it out by points
* differences between algorithms

#### Stop conditions
* by group count
* by difference



