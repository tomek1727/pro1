class Pracownik
  def initialize(imie, nazwisko, id)
  @imie = imie
  @nazwisko = nazwisko
  @id = id
  end

  def info()
    puts "#{@imie} #{@nzwisko} #{@id}"
  end
end
