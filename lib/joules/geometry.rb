#==============================================================================
# Joules
#
# @description: Module for providing geometry formulas
# @author: Elisha Lai
# @version: 0.4.4 05/07/2015
#==============================================================================

# Geometry module (geometry.rb)

module Joules
  module_function

  # @!group Arc Length Method

  # Calculates the arc length of a circle given radius and central angle.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @param central_angle [Int, Float]
  #   central_angle >= 0; central_angle is in radians
  # @return [Float]
  #   return value >= 0; return value has the same units as radius
  # @example
  #   Joules.arc_length(12, (Math::PI/4)) #=> 9.42477796076938
  def arc_length(radius, central_angle)
    radius * central_angle.to_f
  end

  # @!endgroup

  # @!group Circumference Method

  # Calculates the circumference of a circle given radius.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @return [Float]
  #   return value >= 0; return value has the same units as radius
  # @example
  #   Joules.circumference(12) #=> 75.398223686155
  def circumference(radius)
    2 * Math::PI * radius
  end

  # @!endgroup

  # @!group Area Methods

  # Calculates the area of a triangle given base and height.
  # @param base [Int, Float]
  #   base >= 0; base is in a unit of length
  # @param height [Int, Float]
  #   height >= 0; height has the same units as base
  # @return [Float]
  #   return value >= 0; return value has the same units squared as base
  # @example
  #   Joules.triangle_area(2, 3.4) #=> 3.4
  def triangle_area(base, height)
    0.5 * base * height
  end

  # Calculates the area of a trapezium given top base, bottom base, and height.
  # @param top_base [Int, Float]
  #   top_base >= 0; top_base is in a unit of length
  # @param bottom_base [Int, Float]
  #   bottom_base >= 0; bottom_base has the same units as top_base
  # @param height [Int, Float]
  #   height >= 0; height has the same units as top_base
  # @return [Float]
  #   return value >= 0; return value has the same units squared as top_base
  # @example
  #   Joules.trapezium_area(10, 15, 3) #=> 37.5
  def trapezium_area(top_base, bottom_base, height)
    0.5 * (top_base + bottom_base) * height
  end

  # Calculates the area of a rectangle given length and width.
  # @param length [Int, Float]
  #   length >= 0; length is in a unit of length
  # @param width [Int, Float]
  #   width >= 0; width has the same units as length
  # @return [Float]
  #   return value >= 0; return value has the same units squared as length
  # @example
  #   Joules.rectangle_area(2, 3.4) #=> 6.8
  def rectangle_area(length, width)
    length * width.to_f
  end

  # Calculates the area of a circle given radius.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @return [Float]
  #   return value >= 0; return value has the same units squared as radius
  # @example
  #   Joules.circle_area(12) #=> 452.38934211693
  def circle_area(radius)
    Math::PI * (radius**2)
  end

  # @!endgroup

  # @!group Volume Methods

  # Calculates the volume of a sphere given radius.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @return [Float]
  #   return value >= 0; return value has the same units cubed as radius
  # @example
  #   Joules.sphere_volume(12) #=> 7238.229473870883
  def sphere_volume(radius)
    (4 * circle_area(radius) * radius) / 3
  end

  # Calculates the volume of a cone given radius and height.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @param height [Int, Float]
  #   height >= 0; height has the same units as radius
  # @return [Float]
  #   return value >= 0; return value has the same units cubed as radius
  # @example
  #   Joules.cone_volume(6.5, 3) #=> 132.73228961416876
  def cone_volume(radius, height)
    (circle_area(radius) * height) / 3
  end

  # Calculates the volume of a cylinder given radius and height.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @param height [Int, Float]
  #   height >= 0; height has the same units as radius
  # @return [Float]
  #   return value >= 0; return value has the same units cubed as radius
  # @example
  #   Joules.cylinder_volume(6.5, 3) #=> 398.196868842506
  def cylinder_volume(radius, height)
    circle_area(radius) * height
  end

  # @!endgroup

  # @!group Surface Area Methods

  # Calculates the surface area of a sphere given radius.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @return [Float]
  #   return value >= 0; return value has the same units squared as radius
  # @example
  #   Joules.sphere_surface_area(12) #=> 1809.5573684677208
  def sphere_surface_area(radius)
    4 * circle_area(radius)
  end

  # Calculates the surface area of a cone given radius and slant height.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @param slant_height [Int, Float]
  #   slant_height >= 0; slant_height has the same units as radius
  # @return [Float]
  #   return value >= 0; return value has the same units squared as radius
  # @example
  #   Joules.cone_surface_area(3, 5.83) #=> 83.22078939359362
  def cone_surface_area(radius, slant_height)
    circle_area(radius) + (Math::PI * radius * slant_height)
  end

  # Calulates the surface area of a cylinder given radius and height.
  # @param radius [Int, Float]
  #   radius >= 0; radius is in a unit of length
  # @param height [Int, Float]
  #   height >= 0; height has the same units as radius
  # @return [Float]
  #   return value >= 0; return value has the same units squared as radius
  # @example
  #   Joules.cylinder_surface_area(6.5, 3) #=> 122.522113490002
  def cylinder_surface_area(radius, height)
    circumference(radius) * height
  end

  # @!group
end
