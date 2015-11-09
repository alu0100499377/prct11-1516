require 'spec_helper'
require "lib/prct07/bibliografia.rb"
module Prct07

 describe Prct07::Bibliografia do
  before :each do
    @l = Prct07::Bibliografia.new('Cervantes', 'El Quijorte', '12345', '1605')
    @node1 = Node.new(@l, nil)
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
 end# end describe list
 
end