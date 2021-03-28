require 'pry'
class Triangle

    attr_accessor :a, :b, :c

    def initialize(a, b, c)
        @a = a
        @b = b
        @c = c
    end

    def kind
        if a <= 0 || b <= 0 || c <= 0
            raise TriangleError
        end
        if ((a+b <= c) || (a+c <= b) || (b+c <= a))
            raise TriangleError
        end
        if a == b && b == c
            return :equilateral    
        elsif ((a == b) || (a == c) || (b == c))
            return :isosceles
        else
            (a!=b && a!=c && b!=c)
            return :scalene
            
        end
    end

    class TriangleError < StandardError
    end
end
        

