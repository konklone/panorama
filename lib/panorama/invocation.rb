module Panorama
  class Invocation

    attr_accessor :method_name, :lineno, :path, :return_value

    def initialize(options)
      @method_name = options[:method_name]
      @lineno = options[:lineno]
      @path = options[:path]
    end

  end
end