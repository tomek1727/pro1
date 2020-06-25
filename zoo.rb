class Zoo
  def initialize()
    @pracownicy = []
    @klatki = []
  end

  def infopracownicy()
    @pracownicy.each do |x|
      x.info()
  end

  def infoklatki()
    @klatki.each do |x|
      x.info()
      print "Sprząta: "
      @pracownicy.each {|y| x.sprzata == y.id ? y.info()}
    end
  end

  def infozwierzeta()
    @klatki.each {&:infozwierzeta}
  end

  def dodajpracownika(imie, nazwisko)
     id = @pracownicy.length + 1000
     x = Pracownik.new(imie, nazwisko, id)
     @pracownicy << x
   end

   def dodajklatke(pojemnosc, sprzata)
     if @pracownicy.none? {|x| x.id == sprzata}
       puts "Nie ma takiego pracownika"
     else
     id = @klatki.length + 1
     x = Klatka.new(id, pojemnosc, sprzata)
     @pracownicy.each {|x| x.id == sprzata ? x.klatki << id }
     @klatki << x
      end
    end

    def powiekszklatke(klatka, dodaj)
      @klatki.each {|x| x.numer == klatka ? x.pojemnosc += dodaj}
    end

    def dodajzwierze(zwierze, klatka)
      @klatki.each {|x| x.numer == klatka ? x.dodajzwierze(zwierze)}
    end

    def posprzataj(klatka)
      @klatki.each {|x| x.numer == klatka ? x.posprzataj}
    end
  end
