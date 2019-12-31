require 'cmath'

class PhuongTrinhBacHai
  def initialize
    puts "Nhap tham so A:"
    @a = gets().to_i
    puts "Nhap tham so B:"
    @b = gets().to_i
    puts "Nhap tham so C:"
    @c = gets().to_i
  end

  attr_reader :a, :b, :c

  public

  def giai_phuong_trinh
    if a != 0 then
      delta = (b*b) - (4*a*c)
      sqrt_delta = CMath.sqrt(delta)
      if delta > 0 then
        x1 = (-b + sqrt_delta)/(a*2)
        x2 = (-b - sqrt_delta)/(a*2)
        puts "x1: #{x1} - x2: #{x2}"
      else
        if delta == 0 then
          x = -b/(a*2)
          puts "PT nghiệm kép x1 = x2 = : #{x}"
        else
          puts "Vô nghiệm"
        end
      end
    else
      puts "Ko phải ptb2"
    end
  end
end

phuong_trinh_bac_2 = PhuongTrinhBacHai.new
phuong_trinh_bac_2.giai_phuong_trinh