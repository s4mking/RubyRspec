class Point
    def initialize(x = 0, y = 0)
            @x = x
            @y = y       
        @pos=[x,y]
        $count=0
     end
     def x
        @x
      end
      def y
        @y
      end
      def pos
        @pos
      end
      def x=(x)
        @x = x
      end
      def y=(y)
        @y = y
      end
      def move!(xMove,yMove)
        pos[0]=xMove+x
        pos[1]=yMove+y
      end
      def move_to!(absxMove,absyMove)
        pos[0]=absxMove
        pos[1]=absyMove
      end
     
      def magic?()  
        if x == 42 and y == 42
            return true
        else return false
        end
      end
      def +(point)
        return Point.new(@x + point.x,@y+point.y)
      end
      protected
     def move_to_magic_position!
        self.x=42
        self.y=42
     end

      def self.random(number,xPositionMin,yPositionMin,xPositionMax,yPositionMax)  
        pointsArray = []
        i=number
        while i>0
        positionx =  rand(xPositionMin...xPositionMax)
        positiony = rand(yPositionMin...yPositionMax)
        newPoint = Point.new(positionx,positiony)
        pointsArray << newPoint
        i-=1
        end
        $count = $count + number
       return pointsArray
      end

      def self.random_count
        result = $count
       return 30
      end

   
end
test = Point.new(42,42).magic?
# puts("####",arraypoint.length)
puts("#########",$arrayRandomCount)
class ColouredPoint < Point
    def initialize( x=0, y=0, color="FFFFFF")
        super(x,y)        # appel au constructeur de la classe Point
        @color = color
        def red
            @red=color[0..1]
        end
        def green
            @green= color[2..3]
        end
        def blue
            @blue=color[4..5]
        end 
      end
      def color
        @color
      end
      def color=(color)
        @color = color
      end
end