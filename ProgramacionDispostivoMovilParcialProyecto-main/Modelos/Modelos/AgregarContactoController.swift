///Users/ulsa/Desktop/Modelos/Modelos
//  AgregarContactoController.swift
//  Modelos
//
//  Created by Alumno on 11/8/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController{
    
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtMatricula: UITextField!
    @IBOutlet weak var txtJuego: UITextField!
    @IBOutlet weak var txtDiscord: UITextField!
    @IBOutlet weak var txtNickname: UITextField!
    @IBOutlet weak var txtLocalidad: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtCompetitivo: UITextField!
    
    
    var callbackAgregarContacto : ((Restaurante) -> Void)?
    
    override func viewDidLoad(){
        self.title = "Agregar Jugador"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let correo = txtCorreo.text!
        let celular = txtCelular.text!
        let matricula = txtMatricula.text!
        let juego = txtJuego.text!
        let discord = txtDiscord.text!
        let nickname = txtNickname.text!
        let localidad = txtLocalidad.text!
        let sexo = txtLocalidad.text!
        let competitivo = txtCompetitivo.text!
        
        let contacto = Restaurante(nombre: nombre, direccion: correo, horario: celular, matricula: matricula, juego: juego, discord: discord, nickname: nickname, localidad: localidad, sexo: sexo, competitivo: competitivo)
        
        callbackAgregarContacto!(contacto)
        self.navigationController?.popViewController(animated: true)
    }
}
