//
//  ViewController.swift
//  Modelos
//
//  Created by Alumno on 10/4/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var restaurantes : [Restaurante] = []
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda =  tableView.dequeueReusableCell(withIdentifier: "celdaRestaurante") as! CeldaRestaurantController
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        celda.lblHorario.text = restaurantes[indexPath.row].horario
        celda.lblDireccion.text = restaurantes[indexPath.row].direccion
        celda.lblMatricula.text = restaurantes[indexPath.row].matricula
        
        return celda
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEdicion"{
            let destino = segue.destination as! DetallesRestaurantController
            destino.restaurante = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
            destino.indice = tvRestaurantes.indexPathForSelectedRow!.row
            destino.callbackActualizarTablaContactos = actualizarTablaContactos
            destino.callbackEliminarContacto = eliminarContacto
        }
        
        if segue.identifier == "goToCreacion"{
            let destino = segue.destination as! AgregarContactoController
            destino.callbackAgregarContacto = agregarContacto
            
        }
    }
   

    override func viewDidLoad() {
        self.title = "Contactos"
        
        super.viewDidLoad()
        restaurantes.append(Restaurante(nombre: "Juan", direccion: "juan@gmail.com", horario: "6441537345", matricula: "100011", juego: "warzone", discord: "juanin#4545", nickname: "Juarnini123", localidad: "Puebla", sexo: "Masculino", competitivo: "no"))
        restaurantes.append(Restaurante(nombre: "Maria", direccion: "maria@gmail.com", horario: "6441637823", matricula: "100012", juego: "Lol", discord: "Mari45#8989", nickname: "Marlin", localidad: "Peru", sexo: "Femenino", competitivo: "Si") )
        restaurantes.append(Restaurante(nombre: "Santiago", direccion: "santiago@gmail.com", horario: "6464231341", matricula: "100013", juego: "agar.io", discord: "santimango1#8889", nickname: "Santimango300", localidad: "Argentina", sexo: "Masculino", competitivo: "Si"))
        restaurantes.append(Restaurante(nombre: "Alberto", direccion: "alberto@gmail.com", horario: "6412341323", matricula: "100014", juego: "GtaV", discord: "Abert123#5434", nickname: "Albertub400", localidad: "Mexico", sexo: "Masculino", competitivo: "No"))
        restaurantes.append(Restaurante(nombre: "Carlos", direccion: "carlos@gmail.com", horario: "6441523427", matricula: "100015", juego: "Roblox", discord: "Carlitos543#9876", nickname: "Carlangas45", localidad: "Chile", sexo: "Masculino", competitivo: "No"))
        restaurantes.append(Restaurante(nombre: "Javier", direccion: "javier@gmail.com", horario: "6417894239", matricula: "100016", juego: "FreeFire", discord: "JAVIERCITO91#5000", nickname: "xX1javiertito1Xx", localidad: "Mexico", sexo: "Masculino", competitivo: "Si"))
        restaurantes.append(Restaurante(nombre: "Eduardo", direccion: "eduardo@gmail.com", horario: "6443238750", matricula: "100017", juego: "Valorant", discord: "Meduardo#7924", nickname: "MEDU", localidad: "Chile", sexo: "Masculino", competitivo: "Si"))
        restaurantes.append(Restaurante(nombre: "Ayme", direccion: "frekerav@gmail.com", horario: "6442748593", matricula: "100018", juego: "Ttris", discord: "chubi#7777", nickname: "CHUBI", localidad: "Mexico", sexo: "Femenino", competitivo: "No"))
        restaurantes.append(Restaurante(nombre: "Cepeda", direccion: "cepeda@gmail.com", horario: "6423798325", matricula: "100019", juego: "Minecraft", discord: "flame#3422", nickname: "Flame", localidad: "Chile", sexo: "Masculino", competitivo: "No"))
        restaurantes.append(Restaurante(nombre: "Andres", direccion: "andresuper@gmail.com", horario: "6441432677", matricula: "100020", juego: "Lol", discord: "Kape#8888", nickname: "Kape", localidad: "Mexico", sexo: "Masculino", competitivo: "Si"))
        
        // Do any additional setup after loading the view.
    }
    
    func actualizarTablaContactos(){
        tvRestaurantes.reloadData()
    }

    func eliminarContacto(indice : Int){
        restaurantes.remove(at: indice)
        actualizarTablaContactos()
    }
    
    func agregarContacto(contacto: Restaurante){
        restaurantes.append(contacto)
        actualizarTablaContactos()
    }
}

