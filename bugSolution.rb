```ruby
class MyClass
  attr_reader :value # Use attr_reader for read-only access

  def initialize(value)
    @value = value
  end

  def update_value(new_value)
    @value = new_value # Controlled update
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

# my_object.instance_variable_set(:@value, 20) # This is now prevented by attr_reader
my_object.update_value(20) # Use the designated method to update
puts my_object.value # => 20
```