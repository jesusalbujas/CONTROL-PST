// beanshell:09_PST_ProductClassFromProduct
import org.compiere.util.DB;

int classId = -1;  // Inicializamos con un valor que no sea un ID válido

if (A_Tab.getValue("M_Product_ID") != null) {
    int productId = (int) A_Tab.getValue("M_Product_ID");
    String sql = "SELECT M_Product_Class_ID FROM M_Product WHERE M_Product_ID = ?";
    classId = DB.getSQLValue(null, sql, productId);  // Usamos getSQLValue para obtener un entero
} else {

    A_Tab.setValue("M_Product_Class_ID", "");
}

if (classId > 0 ){
    A_Tab.setValue("M_Product_Class_ID", classId);
}

result = "";
