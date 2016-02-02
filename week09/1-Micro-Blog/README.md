# Micro Blog

Hi guys & girls,

The time has come for you to make your first web application for the course.

For this task you will be using [Sinatra](http://www.sinatrarb.com/) to build a **microblogging application**

**Note:** We do not want you to use any database! We want a pure Ruby solution that stores data in memory relying on arrays, hashes, sets and other structures.

## Routes

Your application will have to provide the following interface:

* `get '/'` - Display a view of all posts.
* `get '/new'` - Displays a view for creating a new post.
* `post '/new'` - Creates a new post.
* `get '/42'` - Displays a view of the post with id equal to 42.
* `delete '/42'` - Deletes the post with id equal to 42.

## Visuals & HTML

We don't have any visual requirements so we'll leave the styling to you.

To help yourself with the HTML, you can use the following cheat sheets (or anything else on the internet):

* <http://web.stanford.edu/group/csp/cs21/htmlcheatsheet.pdf>
* <http://theblogstylist.com/cheat/html/>

## Validations

However, we require you to perform some validation:

* We would like to see a suitable page if the requested blog post is not present.
* It would be nice to display something on the index page if there are no blog posts yet.
* We would like our blog posts to not exceed the limit of 256 characters. Make sure you check them before saving!

## Tags

Tags. We want them too.

Every sequence in a post that begins with `#` and continuous with a valid Ruby identifier is considered a tag.

**A post could have many tags.** We want to be able to search for every post that is tagged in a particular way.

`get '/search/ruby'` is the interface that we will use for searching for posts tagged with `#ruby`. Present them in the same fashion you present the posts on the index page.

GL & HF!

## HTTP Client for communication

Our microblog runs on a HTTP server. In order to create a new post, we need a `form` with `POST` method and action pointing to `/new`

For diversity (and learning) reasons, we are going to create a simple console-based Ruby application, that will serve as a client to our microblog.

Our client should read from some config / settings file where our blog is located as an URL.

After this, we are looking for a similar interface:

```
$ ruby client.rb get all
Displaying all blog posts:
...
```

```
$ ruby client.rb get 42
Displaying blog post with id 42:
...
```

```
$ ruby client.rb get 43
Blog post with id 43 not found.
```

```
$ ruby client.rb delete 42
Blog post with id 42 deleted.
```

```
$ ruby client.rb create blog_post.txt
Creating a new blog post with contents from blog_post.txt
...
Created with id 1337!
```

```
$ ruby client.rb search ruby
Searching for blog posts with #ruby:
...
```

**Try to solve that problem using the plain `net/http` library** - <http://docs.ruby-lang.org/en/2.3.0/Net/HTTP.html>
