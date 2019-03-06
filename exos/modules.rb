require "so_class.rb"
module Geometry
  VERSION = "0.0.1"
  module LineDetector 
    def line?
        if(points[0].x == points[0].y) and (points[1].x == points[1].y)
          return true
        end
    end
  end
  
  module TriangleDetector
    def triangle?
       if points.length == 3
        return true
       end
    end
  end

  class Shape
    include TriangleDetector
    include LineDetector
    def initialize(arrayPoints = [])
      @arrayPoints=arrayPoints
    end
    def arrayPoints
      @arrayPoints
    end
  def points
    @arrayPoints
  end

  def add_point(p)
    self.arrayPoints.push(p)
   
  end

  def remove_point
    self.arrayPoints.pop
  end
end

  def self.distance(a,b)
    @distancex = (a.x - b.x).abs
    @distancey = (a.y - b.y).abs
    d = Math.sqrt(@distancex**2 + @distancey**2)
    return d
  end
end