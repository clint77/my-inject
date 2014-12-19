class Array

  # def my_inject &block
  def my_inject(&block)
    copy = self.dup
    total = copy.shift    
    copy.each do |item|
      total = yield total, item
      p total
      p item
    end
    return total
  end
end