load 'klatka.rb'
load 'pracownik.rb'
load 'zoo.rb'
load 'zwierze.rb'

zoo = Zoo.new

def menu()
  puts "Witaj w Zoo"
  puts "Co chcesz zrobić?"
  puts "[1] Pokaż pracownikow"
  puts "[2] Pokaż klatki"
  puts "[3] Pokaż zwierzeta"
  puts "[4] Dodaj Pracownika"
  puts "[5] Dodaj Zwierze"
  puts "[6] Dodaj Klatke"
  puts "[7] Powieksz Klatke"
  puts "[8] Posprzataj Klatke"
  odp = $stdin.gets.chomp.to_i
  if odp == 1
    zoo.infopracownicy
  elsif odp == 2
    zoo.infoklatki
  elsif odp == 3
    zoo.infozwierzeta
  elsif odp == 4
    nowypracownik()
  elsif odp == 5
    nowezwierze()
  elsif odp == 6
    nowaklatka()
  elsif odp == 7
    wiekszaklatka()
  elsif odp == 8
    posprzatajklatke()
  end
  $stdin.gets.chomp
  menu()
end

def nowypracownik()
  puts "Podaj imie nowego pracownika: "
  imie = $stdin.gets.chomp
  puts "Podaj nazwisko nowego pracownika: "
  nazwisko = $stdin.gets.chomp
  zoo.dodajpracownika(imie, nazwisko)
end

def nowezwierze()
  puts "Jakiego typu zwierze chcesz dodać?"
  puts "[1]Ptak"
  puts "[2]Ssak"
  puts "[3]Gad"
  odp = $stdin.gets.chomp.to_i
  puts "Podaj imie zwierzecia"
  imie = $stdin.gets.chomp
  puts "Podaj gatunek zwierzecia"
  gatunek = $stdin.gets.chomp
  if odp == 1
    puts "Podaj rozmiar skrzydel ptak [cm]"
    skrzydla = $stdin.gets.chomp.to_i
    puts "Podaj wytrzymalosc ptaka [liczba]"
    wytrzymalosc = $stdin.gets.chomp.to_i
    x = Ptak.new(imie, gatunek, skrzydla, wytrzymalosc)
  elsif odp == 2
    puts "Podaj srodowisko w jakim zyje zwierze"
    srodowisko = $stdin.gets.chomp
    x = Ssak.new(imie, gatunek, srodowisko)
  elsif odp == 3
    puts "Czy gad jest jadowity?"
    puts "[0]Nie"
    puts "[1]Tak"
    jadowity = $stdin.gets.chomp.to_i
    x = Gad.new(imie, gatunek, jadowity)
  else
    menu()
  end
  puts "Do jakiej klatki chcesz dodac zwierze?[numer]"
  klatka = $stdin.gets.chomp.to_i
  zoo.dodajzwierze(x, klatka)
end

def nowaklatka()
  puts "Podaj rozmiar klatki"
  rozmiar = $stdin.gets.chomp.to_i
  puts "Kto ma byc odpowiedzialny za sprzatanie?[id pracownika]"
  sprzata = $stdin.gets.chomp.to_i
  zoo.dodajklatke(rozmiar, sprzata)
end

def wiekszaklatka()
  puts "Którą klatkę chcesz powiększyć?[numer]"
  klatka = $stdin.gets.chomp.to_i
  puts "O ile miejs chcesz ją powiększyć?"
  dodaj = $stdin.gets.chomp.to_i
  zoo.powiekszklatke(klatka, dodaj)
end

def posprzatajklatke()
  puts "Którą klatkę posprzątać?[numer]"
  klatka = $stdin.gets.chomp.to_i
  zoo.posprzataj(klatka)
end

menu()
    
