class Definition
@@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
  end

  define_method(:definition) do
    @definition
  end

  define_singleton_method(:all) do
    @@definitions
  end
end
