// groovy:02_PST_NumberOnlyInAssetAmtEntered
// Table: A_Asset
// Events: Table Before Change, Table Before Insert
import org.compiere.model.PO;
PO entity = A_PO;

try {
    String assetAmtEntered = entity.get_ValueAsString("AssetAmtEntered");
    if (assetAmtEntered != null) {
        // Verifica si contiene solo números con un punto decimal opcional
        if (!assetAmtEntered.matches("^\\d+(\\.\\d+)?\$")) {
            return "El Costo del Activo no puede contener caracteres especiales excepto puntos decimales, verifique e intente nuevamente.";
        }

        // Verifica que el valor no sea cero
        if (Double.parseDouble(assetAmtEntered) == 0) {
            return "El Costo del Activo no puede ser cero, verifique los datos introducidos e intente nuevamente.";
        }

        // Verifica que el valor no este negativo
        if (Double.parseDouble(assetAmtEntered) < 0) {
            return "El Costo del Activo no puede ser negativo, verifique los datos introducidos e intente nuevamente.";
        }
    }

    result = "";

} catch (Exception e) {
    return "@Error@ " + e.getLocalizedMessage();
}
