class Array

  # def my_inject &block
  def my_inject(*arg)
    
    if block_given? 
      one = arg
      copy = self.dup 
      memo = copy.shift #array
      start_num = one.shift #should be a fixnum
      #memo = copy.unshift(start_num) if start_num != nil
      
      copy.each do |item|
        memo = yield memo, item
        puts "memo = #{memo} inside copy.each"
        
      end
      
      return memo

    end
  end
end