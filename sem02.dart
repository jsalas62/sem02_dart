class Vehiculo {
  String marca;
  String modelo;
  int anio;

  Vehiculo(this.marca, this.modelo, this.anio);

  void mostrarDetalles() { 
    print('Marca: $marca, Modelo: $modelo, Año: $anio'); 
  } 
}

class Auto extends Vehiculo {
  String tipoCombustible;

  Auto(String marca, String modelo, int anio, this.tipoCombustible) 
      : super(marca, modelo, anio);

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Tipo Combustible: $tipoCombustible');
  }
}

class AutoElectrico extends Auto {
  int capacidadBateria; // en kWh

  AutoElectrico(String marca, String modelo, int anio, this.capacidadBateria)
      : super(marca, modelo, anio, 'Eléctrico');

  @override
  void mostrarDetalles() {
    super.mostrarDetalles();
    print('Capacidad de la Batería: $capacidadBateria kWh');
  }
}

class Empleado {
  String nombre;
  double salarioBase;

  Empleado(this.nombre, this.salarioBase);

  double calcularBonificacion() {
    return 0;
  }

  void mostrarDetalles() {
    print('Nombre: $nombre');
    print('Salario Base: \$${salarioBase.toStringAsFixed(2)}');
    print('Nuevo Salario: \$${(salarioBase + calcularBonificacion()).toStringAsFixed(2)}');
  }
}

class Gerente extends Empleado {
  Gerente(String nombre, double salarioBase) : super(nombre, salarioBase);

  @override
  double calcularBonificacion() {
    return salarioBase * 0.20; 
  }
}

class Operario extends Empleado {
  Operario(String nombre, double salarioBase) : super(nombre, salarioBase);

  @override
  double calcularBonificacion() {
    return salarioBase * 0.10; 
  }
}

void main() {
  print('--- Demostración de Vehículos ---');
  var vehiculo1 = Vehiculo('Toyota', 'Corolla', 2020);
  vehiculo1.mostrarDetalles();

  var auto1 = Auto('Toyota', 'Tercel', 1996, 'Gasolina');
  auto1.mostrarDetalles();

  var autoElectrico1 = AutoElectrico('Tesla', 'Model 3', 2023, 75);
  autoElectrico1.mostrarDetalles();

  print('\n--- Demostración de Empleados ---');
  var gerente = Gerente('Jorge', 5000);
  var operario = Operario('Juan', 2000);

  print('Detalles del Gerente:');
  gerente.mostrarDetalles();
  
  print('\nDetalles del Operario:');
  operario.mostrarDetalles();
}