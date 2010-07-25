require 'dojo'

describe Vovo do  
  context "não deve entender" do
    it "quando ouvir 'oi vovó'" do
      Vovo.ouve("oi vovó").should == "Não entendi, fale mais alto"
    end
    
    it "quando ouvir 'tchau vovó'" do
      Vovo.ouve('tchau vovó').should == "Não entendi, fale mais alto"
    end
    
  end
  
  context "deve responder entre 1930 e 1950" do
    
    it "quando ouvir 'MANDOU BALA HOJE?'" do
      resposta = Vovo.ouve('MANDOU BALA HOJE?')
      ano_da_resposta_esta_no_intervalo?(resposta)
    end
    
    it "quando ouvir 'VOCÊ ESTA ESCUTANDO?'" do
      resposta =Vovo.ouve('VOCÊ ESTA ESCUTANDO?')
      ano_da_resposta_esta_no_intervalo?(resposta)
    end
    
    it "quando ouvir 'O BRASIL VAI GANHAR A COPA?'" do
      resposta = Vovo.ouve('O BRASIL VAI GANHAR A COPA?')
      ano_da_resposta_esta_no_intervalo?(resposta)
    end
    
    it "quando ouvir 'ÔÔÔÔÔÔÔ'"  do
      resposta = Vovo.ouve('ÔÔÔÔÔÔÔ')
      ano_da_resposta_esta_no_intervalo?(resposta)
    end
  end
  
  context "deve responder com ano entre 1930 a 1950" do
    it "quando ouvir 'TA COMENDO AMENDOIM?'" do
      resposta = Vovo.ouve("TA COMENDO AMENDOIM?")
      ano_da_resposta_esta_no_intervalo?(resposta)
    end
    
    it "quando ouvir 'TOMOU SEU REMEDIO?'" do
      cabeca = CabecaVovo.new
      resposta = Vovo.ouve("TOMOU SEU REMEDIO?", cabeca)
      ano_da_resposta_esta_no_intervalo?(resposta) 
    end
  end 


  def ano_da_resposta_esta_no_intervalo?(resposta)
     ano = resposta.match(/Não, desde (\d{4})/)[1]
     (1930..1950).should include(ano.to_i)
  end  
  
  context "tchau" do
    
    it "quando falar 1 vez, deve responder 'Não, desde <intervalo>'" do
      resposta = Vovo.ouve("TCHAU")
      ano_da_resposta_esta_no_intervalo?(resposta)
    end
    
    xit "quando falar 3 vezes, deve responder 'Tchau'" do
      2.times{ Vovo.ouve("TCHAU")}
      Vovo.ouve("TCHAU")
    end
  end
end


