require 'spec_helper'
require "lib/prct07/bibliografia.rb"
module Prct07

 describe Prct07::Bibliografia do
  before :each do
    @l = Prct07::Bibliografia.new('Cervantes', 'El Quijorte', '12345', '1605')
    @l2 = Prct07::Bibliografia.new('Tolkien', 'El Hobbit', '5678', '1945')
    
    @node1 = Node.new(@l, nil)
    @node2 = Node.new(@l2, nil)
  end
  
  it 'Debe existir un autor' do
    expect(@l.autor) == 'Cervantes'
  end
 end# end describe bibliografia
  
 describe Prct07::List do
  before :each do
    @lista = Prct07::List.new()
    @lista.push(@node1)
    
  end
  it 'Debe existir un Nodo con su valor y su siguiente' do
    expect(@lista.cabeza != nil && @lista.next == nil && @lista.anterior == nil)
  end
  
  it 'Se puede insertar mas de un elemento' do
    @lista.push(@node1)
    @lista.push(@node2)
    expect(@lista.cabeza).to eq(@node2)
  end
  
  it 'Se extrae el primer elemento de la lista' do
    @lista.push(@node1)
    @lista.push(@node2)
    @lista.pop
    expect(@lista.cabeza).to eq(@node1)
  end
  
  it "Lista con su cabeza" do
    @lista2 = Prct07::List.new()
    expect(@lista2.cabeza).to eq(nil)
  end
    
    
 end# end describe list
 
end