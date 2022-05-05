String? nameValidator(String? name) {
  if ((name ?? "").isEmpty) {
    return "Ingrese un nombre";
  }
  if ((name ?? "").length < 5) {
    return "Nombre muy corto";
  }
  return null;
}

String? stockValidator(String? quantity) {
  if ((quantity ?? "").isEmpty) {
    return "Ingrese una cantidad";
  }
  if (quantity != null) {
    try {
      int q = int.parse(quantity);
      if (q < 1) {
        return "Debe ser mayor a 0";
      }
    } catch (ex) {
      return "Ingrese un número válido";
    }
  }
  return null;
}

String? descriptionValidator(String? name) {
  if ((name ?? "").isEmpty) {
    return "Ingrese una descripción";
  }
  return null;
}

String? priceValidator(String? price) {
  if ((price ?? "").isEmpty) {
    return "Ingrese un precio";
  }
  if (price != null) {
    try {
      double q = double.parse(price);
      if (q < 1) {
        return "Debe ser mayor a 0";
      }
    } catch (ex) {
      return "Ingrese un número válido";
    }
  }
  return null;
}
