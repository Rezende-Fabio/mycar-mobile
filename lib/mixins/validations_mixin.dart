mixin ValidationsMixin {
  String? isNotEmpty(String? value, [String? message]) {
    if (value!.isEmpty) return message ?? "Campo é obrigatorio";

    return null;
  }

  String? validateEmail(String? value, [String? message]) {
    if (value!.isEmpty) {
      return message ?? "Campo é obrigatorio";
    } else {
      String emailRegex = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
      RegExp regex = RegExp(emailRegex);
      if (regex.hasMatch(value)) {
        return null;
      } else {
        return message ?? "Verifique o e-mail digitado";
      }
    }
  }

  String? validatePhone(String? value, [String? message]) {
    if (value!.isEmpty) {
      return message ?? "Campo é obrigatorio";
    } else {
      String phoneRegex = r'^\d{7}-\d{4}$';
      RegExp regex = RegExp(phoneRegex);
      if (regex.hasMatch(value)) {
        return null;
      } else {
        return message ?? "O formato do telefone é xxxxxxx-xxxx";
      }
    }
  }

  String? validatePassword(String? value, [String? message]) {
    if (value!.isEmpty) {
      return message ?? "Campo é obrigatorio";
    } else {
      if (value.length >= 8) {
        return null;
      } else {
        return message ?? "A senha precisa ter mais que 8 caracteres";
      }
    }
  }
}
