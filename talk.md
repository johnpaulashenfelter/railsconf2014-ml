# Machine Learning for Fun and Profit (with Ruby)

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

## The Talk

