extension AppString on String {
  String toFirstUpperCase() => (this == "") ? "" : "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";

  String toInCaps() => '${this[0].toUpperCase()}${this.substring(1)}';

  String toAllInCaps() => this.toUpperCase();

  String toCapitalizeFirstToOfEach() {
    try {
      String text = this.replaceAll("  ", " ");
      return text.split(" ").map((str) => str.substring(0, 1).toUpperCase() + str.substring(1, str.length).toLowerCase()).join(" ");
    } catch (err) {
      return "";
    }
  }
}
