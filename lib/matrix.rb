  class Matrix
    
    include Enumerable
	attr_reader :filas, :columnas
	
	  def initialize(filas, columnas)
	    @filas = filas
	    @columnas = columnas
	  end
	  
	  def +(other)
	    
	    if (other.columnas == self.columnas && other.filas == self.filas)	      
	      suma = Matrix.new(filas,columnas)	    
	    for i in 0...@filas
	      for j in 0...@columnas		
		suma[i,j] = self[i,j] + other[i,j]
	      end
	    end
	      suma
	    else 
	      puts "No se puede sumar, las matrices no tienen las mismas dimensiones!"
	    end
	    
	end
  
	  def -(other)
	    	    
	    if (other.columnas == self.columnas && other.filas == self.filas)	      
	      resta = Matrix.new(filas,columnas)	    
	    for i in 0..@filas
	      for j in 0..@columnas		
		resta[i,j] = self[i,j] + other[i,j]
	      end
	    end
	      resta
	    else 
	      puts "No se puede restar, las matrices no tienen las mismas dimensiones!"
	    end
	    
	  end
	  
	  def *(other)

	    mul = Matriz.new(filas, columnas)        
	      for i in (0..@filas)
		for j in (0..@columnas)
		  mul[i,j] = (self[i,j])*(other[i,j])
		    for k in (1..@columnas)
		  mul[i][j] = mul[i][j] + (self[i][k])*(other[k][j])
		end
	      end
	    end
	      mul

	  end
	  
	  def ==(other)
	    for i in (i..@filas)
	      for j in (j..@columas)
		if self[i,j] != other[i,j]
		  return false
		else
		  return true
		end
	      end
	    end
	  end
	  
	  def to_s
      
	    for i in 0...@filas
	      for j in 0...@columnas
		puts "#{self[i,j]}"
		  if j == @columnas
		      puts "\n"
		  end
	      end
	    end
	    
	  end
          
	  def filas
	    return @filas
	  end
  
	  def columnas	    
	    return @columnas
	  end

	  def coerce(other)
	    [self,other]
	  end
  end