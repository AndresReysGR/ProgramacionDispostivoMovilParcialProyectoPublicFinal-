//
//  DetallesRestaurantController.swift
//  Modelos
//
//  Created by Alumno on 10/6/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurantController : UIViewController {
    
    var indice : Int = -1
    var restaurante : Restaurante?
    var callbackActualizarTablaContactos : (() -> Void)?
    var callbackEliminarContacto : ((Int) -> Void)?
    
    @IBOutlet weak var txtCNombre: UITextField!
    @IBOutlet weak var txtCContacto: UITextField!
    @IBOutlet weak var txtCCelular: UITextField!
    @IBOutlet weak var txtCMatricula: UITextField!
    @IBOutlet weak var txtCJuego: UITextField!
    @IBOutlet weak var txtCDiscord: UITextField!
    @IBOutlet weak var txtCNickname: UITextField!
    @IBOutlet weak var txtCLocalidad: UITextField!
    @IBOutlet weak var txtCSexo: UITextField!
    @IBOutlet weak var txtCCompetitivo: UITextField!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnEliminar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Editar Jugador"

        
        txtCNombre.text = restaurante!.nombre
        txtCContacto.text = restaurante!.direccion
        txtCCelular.text = restaurante!.horario
        txtCMatricula.text = restaurante!.matricula
        txtCJuego.text = restaurante!.juego
        txtCDiscord.text = restaurante!.discord
        txtCNickname.text = restaurante!.nickname
        txtCLocalidad.text = restaurante!.localidad
        txtCSexo.text = restaurante!.sexo
        txtCCompetitivo.text = restaurante!.competitivo
        //Segunda pantalla
        
    
        

        
    }
    
    
    @IBAction func doTapEdit(_ sender: Any) {
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnEliminar.isEnabled = false
        btnEliminar.isHidden = true
        btnGuardar.isHidden = false
        btnGuardar.isEnabled = true
        btnCancelar.isHidden = false
        btnCancelar.isEnabled = true
        
        txtCNombre.isEnabled = true
        txtCContacto.isEnabled = true
        txtCCelular.isEnabled = true
        txtCMatricula.isEnabled = true
        txtCJuego.isEnabled = true
        txtCDiscord.isEnabled = true
        txtCNickname.isEnabled = true
        txtCLocalidad.isEnabled = true
        txtCSexo.isEnabled = true
        txtCCompetitivo.isEnabled = true
        
    }
    @IBAction func doTapGuardar(_ sender: Any) {
        restaurante!.nombre = txtCNombre.text!
        restaurante!.direccion = txtCContacto.text!
        restaurante!.horario = txtCCelular.text!
        restaurante!.matricula = txtCMatricula.text!
        restaurante!.juego = txtCJuego.text!
        restaurante!.discord = txtCDiscord.text!
        restaurante!.nickname = txtCNickname.text!
        restaurante!.localidad = txtCLocalidad.text!
        restaurante!.sexo = txtCSexo.text!
        restaurante!.competitivo = txtCCompetitivo.text!
        
        txtCNombre.isEnabled = false
        txtCContacto.isEnabled = false
        txtCCelular.isEnabled = false
        txtCMatricula.isEnabled = false
        txtCJuego.isEnabled = false
        txtCDiscord.isEnabled = false
        txtCNickname.isEnabled = false
        txtCLocalidad.isEnabled = false
        txtCSexo.isEnabled = false
        txtCCompetitivo.isEnabled = false
        
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnEliminar.isEnabled = true
        btnEliminar.isHidden = false
        btnGuardar.isHidden = true
        btnGuardar.isEnabled = false
        btnCancelar.isHidden = true
        btnCancelar.isEnabled = false
        
        callbackActualizarTablaContactos!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        txtCNombre.text = restaurante!.nombre
        txtCContacto.text = restaurante!.direccion
        txtCCelular.text = restaurante!.horario
        txtCMatricula.text = restaurante!.matricula
        txtCJuego.text = restaurante!.juego
        txtCDiscord.text = restaurante!.discord
        txtCNickname.text = restaurante!.nickname
        txtCLocalidad.text = restaurante!.localidad
        txtCSexo.text = restaurante!.sexo
        txtCCompetitivo.text = restaurante!.competitivo
        
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnEliminar.isEnabled = true
        btnEliminar.isHidden = false
        btnGuardar.isHidden = true
        btnGuardar.isEnabled = false
        btnCancelar.isHidden = true
        btnCancelar.isEnabled = false
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarContacto!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    
}
