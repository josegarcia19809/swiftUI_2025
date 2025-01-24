//
//  Strings.swift
//  Learning Swift 2025
//
//  Created by Jose Garcia on 25/12/24.
//

func strings() {
    print("This is a String")
}

func getSizeString(text: String) -> Int {
    return text.count
}

func countText() -> String {
    let myPet = "Crocodile"
    return myPet + ", length: " + String(getSizeString(text: myPet))
}

func capitalizeText() -> String {
    let myName = "jose garcia"
    return myName + ": " + myName.capitalized
}

func lowerUpperCase() -> String {
    let myAnimal = "GiRAffe"
    return myAnimal.uppercased() + ", " + myAnimal.lowercased()
}

func multilinea() -> String {
    return "El trabajo va a ocupar la mayor parte de tu vida, \ny la única forma de estar realmente satisfecho\n es hacer aquello que crees es un gran trabajo."
}

func trimString() -> String {
    let cita = "       El trabajo va \n\na ocupar la mayor parte de tu \tvida          "
    return cita.trimmingCharacters(in: .whitespacesAndNewlines)
}

func estaVacia(texto: String) -> Bool {
    return texto.isEmpty
}

func esMensajeVacio() -> String {
    let mensaje = "There is a beatiful life"
    return mensaje + "(vacio?): " + String(estaVacia(texto: mensaje))
}

func contieneSubcadena() -> String {
    let mensaje = "I will not let myself be controlled by anything"
    return mensaje + " contiene 'myself': " + String(mensaje.contains("myself"))
}

func primeraUltimaLetras(lenguaje: String) -> String {
    //let lenguaje = "swift"
    return lenguaje + ", primera letra: " + String(lenguaje.first!) + ", última letra: "
            + String(lenguaje.last!)
}

func obtenerElementoRandom() -> String {
    let lenguaje = "kotlin"
    return lenguaje + ": " + String(lenguaje.randomElement()!)
}
