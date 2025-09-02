// beanshell: SetDescriptionFromSerNo
// Este script establece el campo "Description" con un '#' seguido del valor del campo "SerNo".

Object serNo = A_Tab.getValue("SerNo");

if (serNo != null) {
    A_Tab.setValue("Description", "#" + serNo.toString());
} else {
    A_Tab.setValue("Description", null);
}

result = "";
