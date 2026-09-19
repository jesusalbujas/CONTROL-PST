# Proyecto Socio Tecnológico I (Trayecto I)

> **Documento Base:** `PROYECTO SOCIO TECNOLÓGICO I.docx`  
> **Institución:** Universidad Politécnica Territorial del Estado Portuguesa "Juan de Jesús Montilla" (UPTEP JJ Montilla)  
> **Programa:** Programa Nacional de Formación en Informática (PNFI)  
> **Fecha de Culminación:** Noviembre 2023 | Acarigua, Estado Portuguesa  
> **Tutor Académico:** Profa. Eglee Rivas  

---

## 1. Ficha Técnica del Proyecto

| Parámetro | Detalle |
| :--- | :--- |
| **Título del Proyecto** | **Alfabetización y Soporte Técnico en Software Libre y Ofimática en la U.E.C Fe y Alegría “Nuestra Señora de Coromoto”** |
| **Línea de Investigación** | Soporte Técnico a Usuarios y Equipos / Formación Tecnológica Comunitaria |
| **Comunidad Beneficiada** | U.E.C. Fe y Alegría "Nuestra Señora de Coromoto" (Sector Bella Vista II, Acarigua) |
| **Equipo de Desarrollo** | • Jesús Albujas (C.I: 32.218.524)<br>• Jesús Hernández (C.I: 31.009.224)<br>• Daniel Pérez (C.I: 31.114.076)<br>• José Zúñiga (C.I: 31.861.171)<br>• Giovana Garrido (C.I: 31.009.108)<br>• Cristian Camacho (C.I: 31.008.588) |
| **Metodología Aplicada** | Enfoque del Marco Lógico (EML) |

---

## 2. Contexto y Diagnóstico Comunitario

### 2.1 Reseña de la Comunidad
La **U.E.C. Fe y Alegría "Nuestra Señora de Coromoto"** se encuentra ubicada en la comunidad de *Bella Vista II* (sector noroeste de Acarigua, Portuguesa), fundada en la década de 1960. La institución educativa fue instaurada por la congregación de los Padres Jesuitas en 1962 con el propósito de brindar educación de calidad e inclusión a sectores vulnerables de la población.

```mermaid
flowchart TD
    A[Diagnóstico Exploratorio en U.E.C. Fe y Alegría] --> B[Identificación de Actores Clave]
    B --> C[Evaluación del Laboratorio de Computación]
    C --> D{Hallazgos Principales}
    D -->|Hardware/SO| E[Equipos inoperativos o desactualizados]
    D -->|Competencias| F[Brecha en alfabetización digital de estudiantes 5to/6to grado]
    D -->|Docencia| G[Falta de personal especializado en soporte y ofimática]
```

### 2.2 Matriz FODA

| Tipo | Factores Internos / Externos |
| :--- | :--- |
| **Fortalezas (F)** | • Laboratorio de informática con infraestructura física disponible.<br>• Apoyo de la directiva y docentes para la integración comunitaria.<br>• Disposición de los estudiantes hacia nuevas actividades formativas. |
| **Oportunidades (O)** | • Red de colegios Fe y Alegría con lineamientos de inclusión social.<br>• Programas de soberanía tecnológica e impulso del Software Libre.<br>• Subvenciones institucionales para mantenimiento básico. |
| **Debilidades (D)** | • Falta de docente especializado fijo en el área de informática.<br>• Desinterés inicial y brecha en el manejo de herramientas ofimáticas.<br>• Equipos de computación sin mantenimiento preventivo periódico. |
| **Amenazas (A)** | • Fluctuaciones y fallas frecuentes en el suministro del fluido eléctrico.<br>• Deserción estudiantil y limitaciones socioeconómicas del entorno.<br>• Obsolescencia acelerada del hardware disponible. |

---

## 3. Formulación y Estructura del Problema

```mermaid
graph TD
    subgraph Efectos
        E1[Bajo rendimiento en tareas digitales]
        E2[Inoperatividad de equipos en laboratorio]
        E3[Dependencia tecnológica de software privativo]
    end

    P[PROBLEMA CENTRAL: Limitado aprovechamiento tecnológico y equipos desactualizados en U.E.C Fe y Alegría]

    subgraph Causas
        C1[Falta de mantenimiento técnico preventivo/correctivo]
        C2[Carencia de planes de alfabetización en software libre]
        C3[Ausencia de capacitación continua a docentes y alumnos]
    end

    C1 --> P
    C2 --> P
    C3 --> P
    P --> E1
    P --> E2
    P --> E3
```

---

## 4. Ejecución del Plan de Acción y Productos Entregados

El proyecto estructuró su ejecución en dos vertientes principales:

### 4.1 Soporte Técnico Integral a Equipos
- **Diagnóstico y Limpieza:** Inspección física, remoción de polvo, verificación de fuentes de poder, placas madre, módulos RAM y almacenamiento.
- **Mantenimiento Correctivo:** Sustitución de componentes defectuosos y adecuación térmica.
- **Instalación y Configuración:** Despliegue de distribuciones de **GNU/Linux** orientadas a la educación, configurando controladores y entornos de escritorio ligeros.
- **Elaboración de Guía Didáctica:** Guía técnica de mantenimiento y arquitectura del computador para el personal del plantel.

### 4.2 Programa de Alfabetización Tecnológica
- **Población Objetivo:** Estudiantes de 5to y 6to grado de educación básica, además de personal docente.
- **Módulos Impartidos:**
  1. Fundamentos de hardware, software libre vs. privativo.
  2. Manejo del sistema operativo libre y gestión de archivos.
  3. Paquete Ofimático LibreOffice (Writer para procesamiento de texto, Calc para hojas de cálculo, Impress para presentaciones).
  4. Uso seguro y responsable de internet e investigación académica.
- **Material de Apoyo:** Plan diario de clase y manuales ilustrados con dinámicas participativas ("Aprender Haciendo").

---

## 5. Resultados y Valoración

```mermaid
pie title Distribución del Impacto del PST I
    "Equipos Recuperados y Operativos" : 45
    "Estudiantes y Docentes Capacitados" : 40
    "Guías Didácticas y Soporte Documental" : 15
```

- **Reactivación del Laboratorio:** Puesta a punto de las estaciones de trabajo del aula de informática, dejándolas 100% operativas.
- **Empoderamiento Comunitario:** Más de 60 estudiantes y docentes capacitados en el uso cotidiano de suites ofimáticas libres.
- **Sostenibilidad:** Entrega de guías de procedimientos para que la institución mantenga buenas prácticas en el cuidado del equipamiento informático.
