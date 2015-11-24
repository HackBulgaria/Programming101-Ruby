# Points

Implement a class in Ruby, called `InfinitePlane` which is going to simulate a 2D coordinate system.

![](http://centurion2.com/XNA/GameProgrammingBasics/GPB100/GPB110/Game2DCoordinateSystem.PNG)

The class should take x and y position of a point in that plane:

```ruby
plane = InfinitePlane.new 0, 0
```

Using this class, make a method called `move_to_directions(directions)`, which solves the 1st [problem from here](https://github.com/HackBulgaria/ApplicationFall2015/tree/master/1-Points)

Here is an example:

```ruby
>> plane = InfinitePlane.new 0, 0
>> plane.move_to_directions '>>><<<~>>>~^^^'
>> puts plane.to_array
[-3, -3]
```

Use `each` whenever necessary!
