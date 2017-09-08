class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_history_name = attr_name+"_history"
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_history_name # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
      def #{attr_name}=(value)
        @#{attr_history_name} = [] if @#{attr_history_name}.nil?
        @#{attr_history_name} << #{attr_name}
        @#{attr_name}=value
      end
    }
  end
end
