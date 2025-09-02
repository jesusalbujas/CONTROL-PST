// beanshell:FAP_Technical_ProductsToApply_UOMFromProduct
import org.compiere.model.MProduct;
import org.compiere.util.Env;

int uomId = -1;

if (A_Tab.getValue("M_Product_ID") != null) {
    int productId = (Integer) A_Tab.getValue("M_Product_ID");

    MProduct product = MProduct.get(Env.getCtx(), productId);

    if (product != null) {
        uomId = product.getC_UOM_ID();
    }
}

if (uomId > 0) {
    A_Tab.setValue("C_UOM_ID", uomId);
} else {
    A_Tab.setValue("C_UOM_ID", null);
}

result = "";
