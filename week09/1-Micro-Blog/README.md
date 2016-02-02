# Micro Blog

Hi guys,

The time has come for you to make your first web application for the course.

For this task you will be using [Sinatra](http://www.sinatrarb.com/) to build a **microblogging application**

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

**Note:** We do not want you to use any database! We want a pure Ruby solution that stores data in memory relying on arrays, hashes, sets and other structures.

GL & HF!
