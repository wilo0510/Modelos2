#!/usr/bin/python
#-*- coding: utf-8 -*-
 
import readline
 
readline.parse_and_bind("tab: complete")
class Arbol:
	def __init__(self,elemento):
		self.hijos=[]
		self.elemento=elemento
		
def agregarElemento(arbol, elemento, elementoPadre):
    subarbol = buscarSubarbol(arbol, elementoPadre);
    subarbol.hijos.append(Arbol(elemento))

def buscarSubarbol(arbol, elemento):
    if arbol.elemento == elemento:
        return arbol
    for subarbol in arbol.hijos:
        arbolBuscado = buscarSubarbol(subarbol, elemento)
        if (arbolBuscado != None):
            return arbolBuscado
    return None   
    
arbol = Arbol("a")
agregarElemento(arbol, "aceptar", "a")
agregarElemento(arbol, "adic","a")
agregarElemento(arbol, "adictivo", "adic")
agregarElemento(arbol, "adiccion", "adic")
agregarElemento(arbol, "ap", "a")
agregarElemento(arbol, "apuesto","ap")
agregarElemento(arbol, "apuesta", "ap")
agregarElemento(arbol, "apendice", "ap")
lista=[]
def ejecutarProfundidad(arbol, lista):
	
	for hijo in arbol.hijos:
		ejecutarProfundidad(hijo, lista)
		lista.append(arbol.elemento)

print ejecutarProfundidad(arbol, lista)

def complete(text, state):
    """
        función llamada por readline para completar el texto escrito
    """
    # Lista de posibilidades
    posibilidades = ["arbol", "balón", "bolsa", "calma", "calavera", "cereza", "vino"]
     
    # Encontramos las coincidencias
    results = [x for x in posibilidades if x.startswith(text)] + [None]
     
    return results[state]
 
# Se cambia la función de completar por la propia
readline.set_completer(complete)
 
entrada = raw_input('predictor> ')
 
print entrada
