//
//  Restaurante.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Restaurante{
    var nombre = ""
    var direccion = ""
    var horario = ""
    var matricula = ""
    var juego = ""
    var discord = ""
    var nickname = ""
    var localidad = ""
    var sexo = ""
    var competitivo = ""
    
    
    init(nombre: String, direccion: String, horario: String, matricula: String, juego: String, discord: String, nickname: String, localidad: String, sexo: String, competitivo: String) {
        self.nombre = nombre
        self.direccion = direccion
        self.horario = horario
        self.matricula = matricula
        self.juego = juego
        self.discord = discord
        self.nickname = nickname
        self.localidad = localidad
        self.sexo = sexo
        self.competitivo = competitivo
        

    }
}
