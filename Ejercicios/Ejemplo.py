class Persona:
    contador = 0 # Variable de clase (Miembro de clase)

    def __init__(self,nombre,edad,altura): # Constructor de la clase Persona
        self.nombre = nombre
        self.edad = edad 
        self.altura = altura

    def mostrarDNI(self,dni): # Metodo de instancia o asociada a los objetos
        self.dni = dni 
        print('DNI de la persona:',self.dni,'\n')

    def cantPersonas(): # Metodo de clase o asociado a la clase
        print('La cantidad de personas es:',Persona.contador,'\n')

    def mostrarAtributos(self): # Metodo de instancia o asociado a los objetos 
        print('Nombre:',self.nombre,'\n')
        print('Edad:',self.edad,'\n')
        print('Altura:',self.altura,'\n')

    

a1 = Persona('Juan',23,1.76)
Persona.contador += 1


Persona.cantPersonas()
a1.mostrarDNI(45817140)
a1.mostrarAtributos()
