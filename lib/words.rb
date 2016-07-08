class Word
@@words = []

  define_method(:initialize) do |word|
    @name = word
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@words = []
  end

end
