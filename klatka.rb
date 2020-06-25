class Klatka
  def initialize(numer, pojemnosc, sprzata)
    @numer = numer
    @pojemnosc = pojemnosc.to_i
    @sprzata = sprzata
    @zwierzeta = []
    @brud = 0
  end
  attr_reader :numer
  attr_reader :sprzata

  def dodajzwierze(zwierze)
     @brud += 2
     @zwierzeta.length <= @pojemnosc ? (@zwierzeta << zwierze): (puts "Brak miejsca w klatce")
  end

  def info()
    @brud += 2
    puts "Numer: #{@numer}  Zwierząt: #{@zwierzeta.length}/#{@pojemnosc}  Brud: #{@brud}"
  end

  def infozwierzeta()
    @brud += 2
    puts "\n\nKlatka nr: #{@numer}"
    @zwierzeta.each {|x| x.info()}
    puts "\n"
  end
  def posprzataj()
    @brud = 0
  end
  def powiekszklatke(ile)
    @pojemnosc  = @pojemnosc + ile.to_i
  end
end
