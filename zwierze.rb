class Zwierze
  def initialize(imie, gatunek)
  @imie = imie
  @gatunek = gatunek
  end

end

class Ptak < Zwierze
  def initialize(imie, gatunek, skrzydla, wytrzymalosc)
    super(imie, gatunek)
    @skrzydla = skrzydla
    @wytrzymalosc = wytrzymalosc
    @lot = @skrzydla * @wytrzymalosc
  end

  def info()
    puts "\n#{@gatunek} #{@imie} #{self.class}"
    puts "Zasięg lotu: #{@lot}\n"
  end
end

class Ssak < Zwierze
  def initialize(imie, gatunek, srodowisko)
    super(imie, gatunek)
    @srodowisko = srodowisko
  end

  def info()
    puts "\n#{@gatunek} #{@imie} #{self.class}"
    puts "Środowisko: #{@srodowisko}\n"
  end
end

class Gad < Zwierze
  def initialize(imie, gatunek, jadowity)
    super(imie, gatunek)
    @jadowity = jadowity
  end

  def info()
    puts "\n#{@gatunek} #{@imie} #{self.class}"
    puts(@jadowity ? "Jadowity\n" : "Niejadowity\n")
  end
end
