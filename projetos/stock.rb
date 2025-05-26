def stock_picker(valores)
  menor = valores[0]
  indice_menor = 0

  valores.each_index do |i|
    if valores[i] < menor
      menor = valores[i]
      indice_menor = i
    end
  end

  depois = valores[(indice_menor + 1)..-1]

  if depois.nil? || depois.empty?
    maior = nil
    indice_maior = nil
  else
    maior = depois.max
    # encontra o índice real no array original
    indice_maior = nil
    valores.each_with_index do |v, i|
      if v == maior && i > indice_menor
        indice_maior = i
        break
      end
    end
  end

  [menor, maior]
end

resultado = stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts resultado.inspect
