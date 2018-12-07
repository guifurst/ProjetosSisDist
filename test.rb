#!/usr/bin/ruby -w

require "faraday"
require "json"
require "pp"


def putsa(var)
  puts var,"Hello, Ruby!"
end


def menu
  puts("     Bem Vindo a Furst&Fiel\r")
  puts("Digite 1 para listar as passagens")
  puts("Digite 2 para comprar passagens")
  puts("Digite 3 para listar hospedagens")
  puts("Digite 4 para reservar um quarto")
  puts("Digite 5 para listar os pacotes")
  puts("Digite 6 para comprar pacotes")
  puts("Digite 0 para sair")
  cmd = gets

  if cmd == "1\n"
    list_ticks(ticks)
    menu
  elsif cmd == "2\n"
    buy_ticks
    menu
  elsif cmd == "3\n"
    menu
  elsif cmd == "4\n"
    menu
  elsif cmd == "5\n"
    menu
  elsif cmd == "6\n"
    menu
  #elsif cmd == "0\n"
  else
    puts("Comando Inválido")
    menu
  end
end

def getTipo
  puts("Digite 1 para ida e volta e 2 para somente ida: ")
  tipo = gets
end


def buy_ticks
  puts("Digite sua origem: ")
  origem = gets
  puts ("Digite seu destino: ")
  destino = gets
  tipo = getTipo
  while true
    if tipo == "1\n"
      puts("Digite a data de ida no formato DD/MM/YYYY: ")
      dataida = gets
      puts("Digite a data de volta no formato DD/MM/YYYY: ")
      datavolta = gets
      break
    elsif tipo == "2\n"
      puts("Digite a data da viagem no formato DD/MM/YYYY: ")
      dataida = gets
      break
    else
      puts("Opção inválida !")
      tipo = getTipo
    end
    if tipo != "1\n" and tipo != "2\n"
      continue
    end
  end
  puts("Quantidade de passagens: ")
  npessoas = gets

end


def list_ticks(vetor)
  puts("\n")
  puts("PASSAGENS:")
  puts("\n")
  for i in vetor
    puts("")
    puts("Origem:" + i["origem"])
    puts("Destino:"+ i["destino"])
    puts("Data:", + ["data"])
    puts("vagas:"+ i["vagas"])
  end
end


def list_hotel
  puts("\nVagas de Hospedagens: ")

  for i in vetor
    puts("")
    puts("Cidade:", i["cidade"])
    puts("Data:", i["data"])
    puts("Número de Quartos:", i["nquartos"])
  end
end


def buy_hotel
  puts("Cidade: ")
  cidade = gets
  puts("Data: ")
  data = gets
  puts("Número de Camas: ")
  ncamas = gets

end


#menu
#gets var
#putsa(var)
response = Faraday.new  "https://10.15.55.160/web_api/login"

json = JSON.parse(response.get.body)
pp json

