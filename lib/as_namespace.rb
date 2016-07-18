require "as_namespace/version"

module AsNamespace

  def self.included(base)
    base.extend(ClassMethod)
  end

  module ClassMethod

    ##
    # @param [Module] module_obj
    # @param [String] alias_val
    def as_namespace(module_obj, alias_val)
      @module_obj = module_obj
      @alias_val = alias_val
      if (alias_val =~ /^[[:upper:]]/).nil?
        self.class_eval <<-EOS, __FILE__, __LINE__ + 1
          private def #{alias_val}
            #{module_obj}
          end
        EOS
      else
        self.const_set(alias_val, module_obj)
        self.private_constant(alias_val)
      end
    end

  end

end
