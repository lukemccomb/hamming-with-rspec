class DnaStrandPair

  def initialize(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
  end

  def hamming_distance
    hamm = 0
    if @strand_1 == @strand_2
      hamm
    elsif @strand_1.length != @strand_2.length
      if @strand_1.length > @strand_2.length
        rm_st1 = @strand_1.delete(@strand_2)
        @strand_1.delete!(rm_st1)
        array_1 = @strand_1.split("")
        array_2 = @strand_2.split("")
        hamm = array_1 - array_2
        hamm.length
      elsif @strand_2.length > @strand_1.length
        rm_st2 = @strand_2.delete(@strand_1)
        @strand_2.delete!(rm_st2)
        array_1 = @strand_1.split("")
        array_2 = @strand_2.split("")
        hamm = array_1 - array_2
        hamm.length
      end
    elsif @strand_1.length == @strand_2.length
      array_1 = @strand_1.split("")
      array_2 = @strand_2.split("")
      hamm = array_1 - array_2
      hamm.length
    end
  end
end
