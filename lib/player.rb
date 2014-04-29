class Player

  def initialize(attributes,values)
    attributes.each_with_index do |attribute, index|
      Player.send(:attr_accessor, attribute)
        instance_variable_set("@#{attribute}", values[index])
    end
  end
end
