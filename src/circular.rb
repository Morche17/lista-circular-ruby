require_relative 'nodo'
require 'rainbow/refinement'
using Rainbow

class Circular

  attr_accessor :chirimoya

  def initialize
    @chirimoya = nil
  end

  def insertar(valor)
    nuevecito = Nodo.new(valor)

    if @chirimoya.nil?
      @chirimoya = nuevecito
      nuevecito.siguiente = @chirimoya
    elsif @chirimoya != nil
      nuevecito.siguiente = @chirimoya
      ahorita = @chirimoya

      while ahorita.siguiente != @chirimoya
        ahorita = ahorita.siguiente
      end

      ahorita.siguiente = nuevecito
    end
  end

  def imprimir
    ahorita = @chirimoya
    repetir = false

    while ahorita && !repetir
      print "#{ahorita.valor}".underline + " --> ".yellow

      if ahorita.siguiente == @chirimoya
        if repetir
          break
        else
          repetir = true
        end
      end

      ahorita = ahorita.siguiente
    end

    puts "La lista comienza de nuevo en la chirimoya".green if repetir
  end

end
