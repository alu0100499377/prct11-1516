module Prct07
    
    Node = Struct.new(:value, :next, :anterior)
    
    class Bibliografia
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
    end #class Bibliografia
    #################################################
    
    class List   
        attr_accessor :cabeza, :tail
        @cabeza = nil
        @tail = nil
        
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
        
    end #class List
end #mocule