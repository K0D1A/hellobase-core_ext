module Hellobase
  module CoreExt
    module DivideByZeroFix
      def /(arg)
        begin
          result = super
          result == BigDecimal::INFINITY || result == -BigDecimal::INFINITY ? BigDecimal::NAN : result
        rescue ZeroDivisionError
          BigDecimal::NAN
        end
      end
    end
  end
end

::Integer.prepend ::Hellobase::CoreExt::DivideByZeroFix
::BigDecimal.prepend ::Hellobase::CoreExt::DivideByZeroFix
