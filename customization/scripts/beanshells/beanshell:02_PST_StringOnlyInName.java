// beanshell:02_PST_StringOnlyInName
// @script:beanshell:02_PST_StringOnlyInName
// Obtiene el valor actual del campo 'name'
String nameValue = A_Tab.getValue("Name");

// Verifica si el valor no es nulo y es una cadena de texto
if (nameValue == null) {
    return "Error: El campo está vacío.";
}

// Convertir el valor a String
String currentName = nameValue.toString();

// Verifica si el valor contiene números
if (currentName.matches(".*\\d.*")) {
    // Limpia el valor del campo para evitar el guardado
    A_Tab.setValue("Name", "");
    
    // Muestra un error y evita guardar (solo en zk)
    return "Error: El campo no puede contener números.";
} 

// no mostrar nada si todo está bien
result = "";