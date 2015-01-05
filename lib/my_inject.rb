

class Array

  def my_inject(start = nil, arg = 0)
    start_num = 0 if start == nil
    copy = self.dup 
    if block_given?
      memo = copy.shift
      copy.unshift(start) if start != nil
      
      copy.each do |item|
        memo = yield memo, item 
      end

      return memo

    else
    # if !block_given?
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