# 📋 Estructura y Jerarquía del Organigrama Empresarial 2026
> **Organización:** ERP Consultores y Asociados C.A.  
> **Uso:** Imagen N° 2 del documento oficial de PST IV (Google Docs)  
> **Elaborado para:** Albany Reyes / Equipo de Fase I  

---

## 🏢 Jerarquía y Líneas de Mando Reales (2026)

Para corregir el organigrama en el documento (que erróneamente agrupó a todos como analistas funcionales y subordinó roles independientes), se define la estructura organizacional real:

1. **Nivel Directivo / Socios Principales (Cabecera):**
   - **Carlos Parada** (Socio Director / Operaciones y Tecnología).
   - **José Botero** (Socio Director / Consultoría y Negocios).

2. **Ramas Departamentales Directas:**
   - **Rama de Consultoría Funcional y Soporte:**
     - Coordinación / Analista Funcional Senior: **Silviana**.
     - Consultores / Analistas Funcionales: **Nahomy** y **Daniel**.
   - **Rama Técnica Especializada / Arquitectura e Integraciones:**
     - Dependencia directa de Carlos Parada: **Jesús Albujas** (Desarrollo, Arquitectura de Sistemas y Automatización).
   - **Rama Administrativa / Gestión:**
     - Dependencia directa de Dirección: **Waditza** (Administración y Gestión de Servicios).
     *(Waditza no depende de Jesús Albujas ni Jesús Albujas depende de Waditza; ambos son departamentos independientes que reportan a la Dirección).*

---

## 📊 Diagrama del Organigrama Estructural

```mermaid
graph TD
    subgraph sub_Direccion ["DIRECCIÓN GENERAL / SOCIOS DIRECTORES"]
        CP["Carlos Parada<br><b>Socio Director</b>"]
        JB["José Botero<br><b>Socio Director</b>"]
    end

    subgraph sub_Funcional ["ÁREA DE CONSULTORÍA FUNCIONAL"]
        SIL["Silviana<br><b>Analista Funcional Senior</b>"]
        NAH["Nahomy<br><b>Analista Funcional</b>"]
        DAN["Daniel<br><b>Analista Funcional</b>"]
    end

    subgraph sub_Tecnica ["ÁREA DE INGENIERÍA Y ARQUITECTURA"]
        JA["Jesús Albujas<br><b>Ingeniería de Software / Integraciones</b>"]
    end

    subgraph sub_Admin ["ÁREA ADMINISTRATIVA"]
        WAD["Waditza<br><b>Administración y Servicios</b>"]
    end

    CP --- JB
    CP --> SIL
    JB --> SIL
    SIL --> NAH
    SIL --> DAN

    CP --> JA
    CP --> WAD
    JB --> WAD

    classDef dir fill:#1e293b,stroke:#3b82f6,stroke-width:2px,color:#fff;
    classDef func fill:#0f766e,stroke:#14b8a6,stroke-width:2px,color:#fff;
    classDef tec fill:#1e40af,stroke:#60a5fa,stroke-width:2px,color:#fff;
    classDef adm fill:#854d0e,stroke:#facc15,stroke-width:2px,color:#fff;

    class CP,JB dir;
    class SIL,NAH,DAN func;
    class JA tec;
    class WAD adm;
```

---

## 📝 Pie de Figura Formal para el Documento:
- **Título arriba:** `Imagen N° 2: Organigrama Estructural de ERP Consultores y Asociados C.A.`
- **Fuente abajo:** `Fuente: Reyes S. Albany A. (2026).`
