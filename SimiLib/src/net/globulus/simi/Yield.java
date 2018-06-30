package net.globulus.simi;

class Yield extends RuntimeException {

  final SimiProperty prop;
  final boolean rethrown;

  Yield(SimiProperty prop, boolean rethrown) {
    super(null, null, false, false);
    this.prop = prop;
    this.rethrown = rethrown;
  }
}
