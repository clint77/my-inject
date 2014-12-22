

class Array

  def my_inject(start = 0, arg = 0)
    copy = self.dup 
    if block_given?
      one = start
      memo = copy.shift
      start_num = one
      copy.unshift(start_num) if start_num != 0
      
      copy.each do |item|
        memo = yield memo, item
        # puts "memo = #{memo} inside copy.each" 
      end

      return memo

    end  
      

    if !block_given?
      sym = arg
      memo = 0 
      memo = start if start != 0
      if arg == 0
        sym = start
        memo = copy.shift
      end  
      
      copy.each do |item|
        memo = memo.send(sym, item)
      end

      return memo
      
    end  
  end
end