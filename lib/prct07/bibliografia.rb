#=bibliografia.rb
#Autor: Gabriel Garcia Ventura
#
#==Documentacion generada con RDOC
#
#===class Bibliografia
#*metodo initialize
#*metodo to_s
#*metodo <=>
#
#===class List
#*metodo each
#*metodo push
#*metodo pop
#*push_final
#*pop_final
#
#===class Periodicas<Bibliografia
#*metodo initialize
#
#===class DSL
#*metodo initialize
#*metodo libro
#*metodo to_s
#

module Prct07
    
    Node = Struct.new(:value, :next, :anterior)
    
    class Bibliografia
        include Comparable
        attr_accessor :autor, :titulo, :isbn, :fecha
        
        def initialize(autor, titulo, isbn, fecha)
            @autor = autor
            @titulo = titulo
            @isbn = isbn
            @fecha = fecha
        end
        
        def to_s
            "Autor: #{@autor}\n Titulo: #{@titulo}\n ISBN: #{@isbn}\n Fecha: #{@fecha}\n"
        end
        
        def <=>(anOther)
            titulo.size <=> anOther.titulo.size
        end
        
    end #class Bibliografia
    #################################################
    
    class List   
        
        include Enumerable
        attr_accessor :cabeza, :tail
        @cabeza = nil
        @tail = nil
        
        def each
            temp = @cabeza
            while (temp != @tail) do
                yield temp.value
                temp = temp.next
            end
        end
        
        def push(nodo)
            if @cabeza == nil
                @cabeza = nodo
                @tail = nodo
            else
                nodo.next = @cabeza
                @cabeza.anterior = nodo
                @cabeza = nodo
                nodo.anterior = nil
            end
        end
        
        def pop()
            if (@cabeza != tail)
                aux = @cabeza
                @cabeza = @cabeza.next
                @cabeza.anterior = nil
                aux.next = nil
                aux.value
            else
                @cabeza = nil
                @tail = nil
            end
        end
        
        def push_final(nodo)
            if @tail == nil
                @tail = nodo
                @cabeza = nodo
            else
                @tail.next = nodo
                nodo.anterior = @tail
                @tail = nodo
            end
        end
        
        def pop_final
            if (@cabeza != @tail)
                aux = @tail
                @tail = @tail.anterior
                @tail.next = nil
                aux.anterior = nil
                aux.value
            else
                @cabeza = nil
                @tail = nil
            end
        end
        
    end #class List
    
    
    class Periodicas < Bibliografia
        attr_accessor :tipoPublicacion
        
        def initialize(autor, titulo, isbn, fecha, tipoPublicacion)
            super(autor, titulo, isbn, fecha)
            @tipoPublicacion = tipoPublicacion
        end
        
    end#fin clase periodica
    
    class DSL
        
        attr_accessor :titulo, :name, :biblio
        
        def initialize(name, &block)
            @name = name
            @biblio = []
        end
        
        def libro(titulo, info={})
            a = Prct07::Bibliografia.new(info[:auto],
                                        titulo,
                                        info[:isbn],
                                        info[:fecha])
                                        
            biblio << a
          
        end
        
        def to_s
            
        end
    
    end #fin de la clase DSL
            
end #mocule