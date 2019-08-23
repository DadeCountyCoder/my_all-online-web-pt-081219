Let's just add an #include? method to determine the return value of the my_all? method. After we have the return value, we are all set. The final product will look like this:

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
 
  if block_return_values.include?(false)
    false
  else
    true
  end
end