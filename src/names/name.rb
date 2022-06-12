class Name
  def self.generate(args={})
    self.new(**args).generate
  end
end