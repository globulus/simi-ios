package net.globulus.simi;

import net.globulus.simi.SimiProperty;

class Return extends RuntimeException {
  final SimiProperty prop;

  Return(SimiProperty prop) {
    super(null, null, false, false);
    this.prop = prop;
  }
}
