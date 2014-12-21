class Array

  # def my_inject &block
  def my_inject(*arg)
    copy = self.dup 
    if block_given? 
      one = arg #this is an array of arguments pass
      
      memo = copy.shift #array
      start_num = one.shift #should be a fixnum
      copy.unshift(start_num) if start_num != nil
      
      copy.each do |item|
        memo = yield memo, item
        puts "memo = #{memo} inside copy.each" 
      end
      return memo
    end  
      

    

    if !block_given?
      
      intial = 0
      copy.each do |item|
        memo = memo.send(:*, item)
        puts "memo = #{memo} inside copy.each" 
      end
      return memo
      # copy.__send__(:+, memo, item)
    end  
  end
end