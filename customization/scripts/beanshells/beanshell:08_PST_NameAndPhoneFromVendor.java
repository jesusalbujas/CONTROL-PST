// beanshell:08_PST_NameAndPhoneFromVendor
import org.compiere.util.DB;

String phoneValue = "";
String companyName = "";

// Obtener el ID del socio de negocio (C_BPartner_ID)
if (A_Tab.getValue("C_BPartner_ID") != null) {
    int partnerId = (int) A_Tab.getValue("C_BPartner_ID");  // Obtener el ID del socio de negocio

    // Consultar el teléfono
    String sqlPhone = "SELECT Phone FROM C_BPartner WHERE C_BPartner_ID = ?";
    phoneValue = DB.getSQLValueString(null, sqlPhone, partnerId);

    // Consultar el nombre de la empresa
    String sqlName = "SELECT Name2 FROM C_BPartner WHERE C_BPartner_ID = ?";
    companyName = DB.getSQLValueString(null, sqlName, partnerId);
} else {
    // Si no hay socio de negocio, limpiar los campos
    A_Tab.setValue("PST_CompanyName", "");
    A_Tab.setValue("PST_CompanyPhone", "");
}

// Asignar el teléfono si es válido
if (phoneValue != null && phoneValue != "") {
    A_Tab.setValue("PST_CompanyName", phoneValue);
}

// Asignar el nombre de la empresa si es válido
if (companyName != null && companyName != "") {
    A_Tab.setValue("PST_CompanyPhone", companyName);
}

result = "";
