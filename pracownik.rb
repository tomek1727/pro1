class Pracownik
  def initialize(imie, nazwisko, id)
  @imie = imie
  @nazwisko = nazwisko
  @id = id
  @klatki = []
  end
  attr_reader :id

  def info()
    puts "#{@imie} #{@nazwisko} #{@id}"
  end

  def infoklatki()
    print "Sprząta klatki: "
    @klatki.each {|x| print "#{x} "}
    puts "\n\n"
  end

  def dodajklatke(klatka)
    @klatki << klatka
  end
end
