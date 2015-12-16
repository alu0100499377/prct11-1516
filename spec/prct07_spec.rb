require 'spec_helper'
require "lib/prct07/bibliografia.rb"
module Prct07

 describe Prct07::Bibliografia do
  before :each do
    @l = Prct07::Bibliografia.new('Cervantes', 'El Quijorte', '12345', '1605')
    @l2 = Prct07::Bibliografia.new('Tolkien', 'El Hobbit', '5678', '1945')
    @l3 = Prct07::Bibliografia.new('Tolkien', 'El Hobbit', '5678', '1945')
    
    @node1 = Node.new(@l, nil)
    @node2 = Node.new(@l2, nil)
    
    @node4 = Node.new(@l, nil)
    @node5 = Node.new(@l2, nil)
  end
  
  it 'Debe existir un autor' do
    expect(@l.autor) == 'Cervantes'
  end
  
  it "Comprobamos que los libros son el mismo" do
    (@l2 == @l3).should eq(true)
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
  
  it "Insertar por el final" do
    @lista.push_final(@node1)
    @lista.push_final(@node2)
    expect(@lista.cabeza).to eq(@node1)
  end
  
  it 'Extraer ultimo elemento de la lista' do
    @lista.push_final(@node4)
    @lista.push_final(@node5)
    @lista.pop_final
    
    expect(@lista.cabeza).to eq(@node4)
  end
  
  it "Se puede hacer each" do
    @lista.each{|i| yield i}
  end
  
    
 end# end describe list
 
 
 describe Prct07::Periodicas do
   before :each do
     @p = Prct07::Periodicas.new('Risto', 'Rincon de pensar', '6543', '1-1-2015', 'documento electronico')
    
     @node3 = Node.new(@p, nil)
    end
    
    context "Pruebas para la clase Publicaciones Periodicas" do
      it "Es de la clase Periodicas" do
        expect(@p.class) == Periodicas
      end
    end
    
      it "Tiene un tipo publicacion" do
       expect(@p.tipoPublicacion) == 'documento electronico'
      end
  end #end describe de Periodicas
    
    
  describe Prct07::DSL do
    before :each do
      @b = DSL.new("Libros") do
        libro "El Hobbit",
          :autor => ["JRR Tolkien"],
          :fecha => "1945",
          :isbn => [12345]
      end    
    
    end
    
    context "Pruebas para el DSL" do
      it "se crea" do
        expect(@b).to_not be nil
      end
    end
  end
    
  
 
 
end