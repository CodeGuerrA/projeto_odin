dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(name, dictionary)
  name = name.downcase
  name_limpo = name.gsub(/[!?,.]/, "")
  name_contato = {}
  #scan serve para procurar padrões de algo passando um parametros e o count e um contador
  #passei ambos para armazenar num hash aonde ele foi criado a parti do elemento criado e dps passa o counter do elemetno
  #metodos usados: count, each, scan, select
  dictionary.each do |elemento|
    name_limpo.scan(elemento).count
    name_contato[elemento] = name_limpo.scan(elemento).count
  end
  #depois usei o select para aparecer somente os valores que tiver o valor acima de 0
  name_contato = name_contato.select do |chave, valor| valor > 0 end
  puts name_contato
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
