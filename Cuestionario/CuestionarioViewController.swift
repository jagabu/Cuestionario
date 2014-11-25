//
//  ViewController.swift
//  Cuestionario
//
//  Created by Javi on 24/11/14.
//  Copyright (c) 2014 Javi. All rights reserved.
//

import UIKit

class CuestionarioViewController: UIViewController {

    @IBOutlet weak var lblPregunta: UILabel!
    @IBOutlet weak var lblRespuesta: UILabel!
    
    private let preguntas = [
        "¿Qué es iOS?",
        "¿Qué es Xcode?",
        "¿Qué es Swift?",
        "¿Qué es Objective C?",
        "¿Qué es MVC?",
        "¿Qué es un Framework?",
        "¿Qué es UIKit?",
        "¿Qué es un Storyboard?",
        "¿Qué es un Outlet?",
        "¿Qué es un Target-Action?"];

    private let respuestas = [
        "Una propiedad del controlador que referencia a un objeto vista del Storyboard",
        "El lenguaje tradicional de desarrollo de Apple",
        "El IDE de desarrollo de Apple",
        "El Kit de Interfaz de Usuario (User Interface Kit)",
        "Un mecanismo por el que el controlador puede recibir eventos de las vistas del Storyboard",
        "El nuevo lenguaje de desarrollo de Apple",
        "El patrón de diseño Modelo-Vista-Controlador (Model-View-Controller)",
        "El Sistema Operativo de iPhone e iPad",
        "Un paquete que agrupa componentes de iOS",
        "Una herramienta para crear interfaces de usuario completas, incluyendo navegación"];

    private var indice: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        indice = 0

        mostrarPregunta()
    }

    @IBAction func verRespuesta(sender: UIButton) {
        lblRespuesta.text = respuestas[indice]
    }

    @IBAction func siguientePregunta(sender: UIButton) {
        indice = (indice + 1) % preguntas.count
        mostrarPregunta()
    }
    
    private func mostrarPregunta() {
        lblPregunta.text = preguntas[indice]
        lblRespuesta.text = ""
    }
    

}