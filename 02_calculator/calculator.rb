def binary_op(name, symbol)
  define_method(name) do |x, y|
    x.send(symbol, y)
  end
end

def collection_op(name, initial_value, symbol)
  define_method(name) do |collection|
    collection.reduce(initial_value, &symbol)
  end
end

binary_op(:add, :+)
binary_op(:subtract, :-)
binary_op(:multiply, :*)
binary_op(:power, :**)
collection_op(:sum, 0, :+)
collection_op(:product, 1, :*)

def factorial(n)
  product(n.downto(1))
end
