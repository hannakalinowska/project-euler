class Integer
  def prime?
    return false if self <= 1

    square_root = (self ** 0.5).to_i
    2.upto(square_root) do |i|
      if i.odd? || i == 2
        if self % i == 0
          return false
        end
      end
    end
    return true
  end
end
