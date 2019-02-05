def my_select(collection)
 if collection.empty?
   return "empty"
 else
   i = 0
   new_array = []
   while i < collection.length
     if yield(collection[i]) == true
       new_array = new_array << collection[i]
     end
   i += 1
 end
 new_array
 end
 end


sth = [2,3,4]
my_select(sth) {
  |x| x.even?
}
