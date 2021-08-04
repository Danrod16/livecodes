require_relative 'president'

president_of_syria = President.new("Bashar al-Assad", "Syria", true, 400000)
president_of_syria.to_s

president_of_spain = President.new("Pedro Sanchez", "Spain", false, 0)
president_of_spain.to_s
