# Semantic tweets

The task for this week will involve lots of tweets, API calls, and positive
vibes!

## TL;DR
Create an application that fetches tweets from user's Twitter feed (using
[Twitter's REST API](https://dev.twitter.com/rest/public)) then tries to find
out which tweets are positive, neutral or negative.

Do this processing by a plain Ruby class called `TweetStatus`. How would you
find out whether a tweet is positive from it's content? I dunno, figure it out,
lol :trollface:.

## Requirements

You obviously need a Twitter account with lots of data in the feed.

## Restrictions

If you feel adventurous, make sure you don't use some fancy library wrapping
the APIs. We'd like you to work directly with the API provided by the service.

## Extended

In addition to the functionality above, you should add a form for posting new
tweets. The content of the tweet should first be passed through Semantria and
only if the sentiment of the tweet is positive it should be posted to Twitter.
