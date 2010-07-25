class Vovo
  
  def self.ouve(frase, cabeca = CabecaVovo.new)
    if todos_os_caracteres_sao_maiusculos?(frase)
      return "Não, desde #{cabeca.ano}"
    end
    'Não entendi, fale mais alto'
  end
  
  private
  def self.todos_os_caracteres_sao_maiusculos?(frase)
    frase == frase.upcase
  end

end

class CabecaVovo
  
  
  def ano
    1930+rand(21)
  end
end
