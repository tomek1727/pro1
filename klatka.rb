class Klatka
  def initialize(numer, pojemnosc, sprzata)
    @numer = numer
    @pojemnosc = pojemnosc
    @sprzata = sprzata
    @zwierzeta = []
    @brud = 0
  end

  def dodajzwierze(zwierze)
     @brud += 2
     @zwierzeta.length <= @pojemnosc ? @zwierzeta << zwierze : puts "Brak miejsca w klatce"
  end

  def info()
    @brud += 2
    puts "Numer: #{@numer}  Zwierząt: #{@zwierzeta.length}/#{@pojemnosc}  Brud: #{@brud}"
  end

  def infozwierzeta()
    @brud += 2
    puts "\n\nKlatka nr: #{@numer}"
    @zwierzeta.each {|x| x.info()}
  end
  def posprzątaj()
    @brud = 0
end
