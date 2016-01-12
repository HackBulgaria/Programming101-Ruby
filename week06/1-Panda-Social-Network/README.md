# We are going to make a social networks for Pandas

This is the next big thing. We promise!

## Panda

For our social network, we are going to need a `Panda` class which behaves like that:

```ruby
ivo = Panda.new("Ivo", "ivo@pandamail.com", "male")

ivo.name == "Ivo" # true
ivo.email == "ivo@pandamail.com"  # true
ivo.gender == "male" # true
ivo.male? == true # true
ivo.female? == false # true
```

The `Panda` class also should be possible to:

* Be turned into a string
* Be hashed and used as a key in a dictionary 

Two `Panda` instances are equal if they have matching `name`, `email` and `gender` attributes.

## SocialNetwork

Now it is time for our social network!

Implement a class, called `PandaSocialNetwork`, which has the following public methods:

* `add_panda(panda)` - this method adds a `panda` to the social network. The panda has 0 friends for now. If the panda is already in the network, raise an `PandaAlreadyThere` error.
* `has_panda(panda)` - returns `true` or `false` if the `panda` is in the network or not.
* `make_friends(panda1, panda2)` - makes the two pandas friends. Raise `PandasAlreadyFriends` if they are already friends. **The friendship is two-ways** - `panda1` is a friend with `panda2` and `panda2` is a friend with `panda1`. **If `panda1` or `panda2` are not members of the network, add them!**
* `are_friends(panda1, panda2)` - returns `true` if the pandas are friends. Otherwise, `false`
* `friends_of(panda)` - returns a list of `Panda` with the friends of the given `panda`. Returns `false` if the `panda` is not a member of the network.
* `connection_level(panda1, panda2)` - returns the connection level between `panda1` and `panda2`. If they are friends, the level is 1. Otherwise, count the number of friends you need to go through from `panda` in order to get to `panda2`. If they are not connected at all, return `-1`! Return `false` if one of the pandas are not member of the network.
* `are_connected(panda1, panda2)` - return `true` if the pandas are connected somehow, between friends, or `false` otherwise.
* `how_many_gender_in_network(level, panda, gender)` - returns the number of `gender` pandas (male of female) that in the `panda` network in that many  `level`s deep. If `level == 2`, we will have to look in all friends of `panda` and all of their friends too. And count

## An example

```ruby
network = PandaSocialNetwork.new
ivo = Panda.new("Ivo", "ivo@pandamail.com", "male")
rado = Panda.new("Rado", "rado@pandamail.com", "male")
tony = Panda.new("Tony", "tony@pandamail.com", "female")

network.add_panda(ivo)
network.add_panda(rado)
network.add_panda(tony)

network.make_friends(ivo, rado)
network.make_friends(rado, tony)

network.connection_level(ivo, rado) == 1 # true
network.connection_level(ivo, tony) == 2 # true

network.how_many_gender_in_network(1, rado, "female") == 1 # true
```

## Save and load from file

The next thing our social network is going to do is `saving to your hard drive`

### social_network.save(file_name)

Implement a method, that saves a social network instance to a file.

Think about what format you should use!

### social_network.load(file_name)

Implement a static method, that loads a social network from a saved file and returns a new social network instance.

## Bonus: Save and load from multiple formats

Saved and loaded the file in your custom format? Great! Now let's take it up a level and make it so we can save and load social network instances in `json`, `yaml` and `xml` on top of the format we already have.

Think about the interface of the `#save` and `#load` methods. Will it change? How can we keep the current interface? Should we `if/else` in `#save` or `#load` for the different formats? Is there a better way?
