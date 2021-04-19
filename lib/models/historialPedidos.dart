// Generated by https://quicktype.io

import 'dart:convert';

class Historialenviados {
    List<String> platos;
  List nombre;
  String id;
  int valor;
  String usuarioId;
  String estado;
  String direccionId;
  String fecha;
  int numero;


  Historialenviados({
    this.nombre,
    this.platos,
    this.id,
    this.valor,
    this.usuarioId,
    this.estado,
    this.direccionId,
    this.fecha,
    this.numero,
  });

  Historialenviados.fromJsonMap(Map<String, dynamic> json) {
    nombre= json["platos"] ;
    id = json['_id'];
    valor = json['valor'];
    usuarioId = json['usuario_id'];
    estado = json['estado'];
    direccionId = json['direccion_id'];
    fecha = json['fecha'];
    numero = json['numero'];
  }
}

class Categorias {
  // ignore: deprecated_member_use
  final List<Historialenviados> categorys = new List();
  Categorias();
  Categorias.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final category = new Historialenviados.fromJsonMap(item);
      categorys.add(category);
    }
  }
}

