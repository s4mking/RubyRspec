CONSTANT = true
CONSTANT2 = true
$my_string = 'Toto'
$my_symbol = :testsam
$my_array = [1, "two", 3.0]
$my_float = 1.7
$my_nil = nil
$my_boolean = true

def hello()
    return "Hello, Ruby World!"
end

def nothing(sam = 'treret',sam2 = 'treteter', sam3 = 'treztzt')
    return nil
end

def fibonacci(n)
    if n==1
        1
    elsif n==2
        1
    else
    fibonacci(n-1) + fibonacci(n-2)
    end
end

def who_is_bigger(a,b,c)
    if a == nil or b == nil or c ==nil
        return "nil detected"
    elsif a > c and a > b
        return "a is bigger"
    elsif b > a and b > c
        return "b is bigger"
    elsif c > a and c > b
        return "c is bigger"
    end
end

def reverse_upcase_noLTA(mystring)
    newString = mystring.upcase
    newString = newString.reverse
    newString=newString.tr('LTA','')
    return newString
end

def array_42(collection)
    if collection.include?(42) 
        return true
    else return false
    end
end

def magic_array(collection)
    collection = collection.flatten.reverse.map{|x| x*2}.delete_if{|x| x%3 == 0}.uniq.sort
end