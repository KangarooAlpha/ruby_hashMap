require_relative "lib/node.rb"
require_relative "lib/hash_map.rb"

a = HashMap.new()
a.set("fruit","apple")
p a.get("fruit")
p a.get("apple")
p a.has("fruit")
p a.has("apple")
p a.remove("fruit")
p a.remove("fruit")
a.set('apple', 'red')
a.set('banana', 'yellow')
a.set('carrot', 'orange')
a.set('dog', 'brown')
a.set('elephant', 'gray')
a.set('frog', 'green')
a.set('grape', 'purple')
a.set('hat', 'black')
a.set('ice cream', 'white')
a.set('jacket', 'blue')
a.set('kite', 'pink')
a.set('lion', 'golden')
p a.length()
#a.clear()
p a.keys
p a.values
p a.entries