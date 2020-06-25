class Klatka
  def initialize(numer, pojemnosc, sprzata)
    @numer = numer
    @pojemnosc = pojemnosc
    @sprzata = sprzata
    @zwierzeta = []
  end

  def dodajzwierze(zwierze)
     @zwierzeta.length <= @pojemnosc ? @zwierzeta << zwierze : puts "Brak miejsca w klatce"
  end

  def info()
    puts "Numer: #{@numer}  Zwierząt: #{@zwierzeta.length}/#{@pojemnosc}"
  end

  def infozwierzeta()
    puts "\n\nKlatka nr: #{@numer}"
    @zwierzeta.each {|x| x.info()}
  end
end
