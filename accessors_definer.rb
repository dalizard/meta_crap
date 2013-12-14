module AccessorsDefiner
  def method_missing method, *args, &block
    if specifics.include? symbol_from(method)
      if setter? method
        define_method(method) do
          instance_variable_set "@#{symbol_from(method)}", args.first
        end.call
      else
        define_method(method) do
          instance_variable_get "@#{method}"
        end.call
      end
    else
      super method, *args, &block
    end
  end

  private

  def symbol_from method
    method.to_s.split('=').first.to_sym
  end

  def setter? method
    method.to_s.include? '='
  end
end
