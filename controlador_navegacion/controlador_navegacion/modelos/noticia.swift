//
//  noticia.swift
//  controlador_navegacion
//
//  Created by alumno on 9/29/25.
//

import Foundation

enum Prioridades{
    case normal
    case importante
    case sociales
}

struct Noticia: Identifiable{
    var id = UUID()
    
    var titular: String
    var cuerpo: String
    var imagen: String
    var prioridad: Prioridades
    
    init(titular: String, cuerpo: String, imagen: String, prioridad: Prioridades) {
        self.titular = titular
        self.cuerpo = cuerpo
        self.imagen = imagen
        self.prioridad = prioridad
    }
}

///seccion de placeholder
let noticias: [Noticia] = [
    Noticia(
        titular: "¡ALERTA ROJA! La ciudad enfrenta la peor ola de calor de la década",
        cuerpo: "Las autoridades de salud pública advierten sobre el aumento de casos de deshidratación y golpes de calor. Se estima que más de 500 personas han sido hospitalizadas en las últimas 48 horas. Las autoridades locales insisten en que la situación podría empeorar.",
        imagen: "https://example.com/ola_de_calor.jpg",
        prioridad: .importante
    ),
    Noticia(
        titular: "Escándalo en el gobierno: Un alto funcionario vinculado con una red de corrupción internacional",
        cuerpo: "La investigación ha revelado conexiones entre el ministro de Finanzas y una red de empresas fantasma en paraísos fiscales. Según fuentes cercanas al caso, esto podría tener implicaciones a nivel global, afectando a millones de ciudadanos.",
        imagen: "https://example.com/corrupcion.jpg",
        prioridad: .importante
    ),
    Noticia(
        titular: "Inundaciones devastadoras arrasan con varias ciudades del norte del país",
        cuerpo: "Las lluvias torrenciales han dejado miles de damnificados, y la cifra de muertos asciende a 150, con más de 300 desaparecidos. Las autoridades locales no han podido ofrecer un control total sobre la situación, lo que ha causado alarma en la población.",
        imagen: "https://example.com/inundaciones.jpg",
        prioridad: .importante
    ),
    Noticia(
        titular: "El fin de la democracia: Las elecciones presidenciales están siendo manipuladas",
        cuerpo: "Expertos en derechos humanos alertan sobre un presunto fraude electoral masivo en todo el país. Los resultados podrían estar siendo manipulados por fuerzas externas, lo que pone en peligro la estabilidad política y la integridad del proceso electoral.",
        imagen: "https://example.com/elecciones_manipuladas.jpg",
        prioridad: .importante
    ),
    Noticia(
        titular: "¡CUIDADO! Un virus mortal se extiende rápidamente en el país",
        cuerpo: "El misterioso virus, que ha causado la muerte de más de 200 personas en solo una semana, continúa propagándose. Las autoridades sanitarias piden cautela, aunque no se ha identificado la fuente del brote, lo que genera temor en la población.",
        imagen: "https://example.com/virus_mortal.jpg",
        prioridad: .importante
    ),
    Noticia(
        titular: "¡Última hora! El colapso de la bolsa podría desencadenar una crisis económica global",
        cuerpo: "La caída histórica de las acciones en los mercados financieros ha dejado a muchos economistas preocupados por una posible recesión mundial. Analistas predicen que el desempleo podría aumentar significativamente en los próximos meses.",
        imagen: "https://example.com/colapso_bolsa.jpg",
        prioridad: .importante
    ),
    Noticia(
        titular: "Los secretos de la élite: Se filtran documentos sobre un plan global para controlar la economía mundial",
        cuerpo: "Documentos filtrados sugieren que un grupo selecto de multimillonarios está detrás de un plan para monopolizar los recursos globales. La información podría cambiar el rumbo de la economía mundial, y muchos piden investigaciones urgentes.",
        imagen: "https://example.com/documentos_secretos.jpg",
        prioridad: .sociales
    ),
    Noticia(
        titular: "¡Atención! Se confirma la existencia de extraterrestres, según un informe filtrado",
        cuerpo: "En un giro sorprendente, un informe confidencial del gobierno revela pruebas irrefutables de la existencia de vida extraterrestre. El contenido de este informe está causando un gran revuelo a nivel mundial.",
        imagen: "https://example.com/extraterrestres.jpg",
        prioridad: .sociales
    ),
    Noticia(
        titular: "La crisis del agua: El suministro de agua potable está en peligro",
        cuerpo: "Expertos en medio ambiente han advertido que los recursos hídricos del planeta se están agotando a un ritmo alarmante. En varias regiones del mundo, los niveles de los embalses caen peligrosamente, y las autoridades no tienen soluciones claras.",
        imagen: "https://example.com/crisis_agua.jpg",
        prioridad: .sociales
    ),
    Noticia(
        titular: "Desaparición inexplicable de más de 1000 personas en una pequeña ciudad",
        cuerpo: "Autoridades locales están desconcertadas por la desaparición masiva en una ciudad del sur del país. Las investigaciones están en curso, pero los expertos aseguran que esto podría ser parte de un patrón más grande de desapariciones a nivel mundial.",
        imagen: "https://example.com/desapariciones.jpg",
        prioridad: .normal
    )
]
