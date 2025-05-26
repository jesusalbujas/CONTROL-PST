// beanshell:10_PST_AssetMark_IDFromModel
import org.compiere.util.DB;

int markId = 0;  // Variable para almacenar el ID de la marca

// Verificar si PST_AssetModel_ID tiene un valor asignado
if (A_Tab.getValue("PST_AssetModel_ID") != null) {
    int assetModelId = (int) A_Tab.getValue("PST_AssetModel_ID");  // Obtener el valor del modelo

    // Consulta SQL para obtener la marca asociada al modelo
    String sql = "SELECT PST_AssetMark_ID FROM PST_AssetModel WHERE PST_AssetModel_ID = ?";

    // Ejecutar la consulta y obtener el ID de la marca (como entero)
    markId = DB.getSQLValue(null, sql, assetModelId);
} else {
    A_Tab.setValue("PST_AssetMark_ID", "");
}

if (markId > 0) {
    A_Tab.setValue("PST_AssetMark_ID", markId);
}

result = "";
