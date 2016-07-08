class Word

  define_method(:initialize) do |word|
    @name = word
  end

  define_method(:name) do
    @name
  end
end
