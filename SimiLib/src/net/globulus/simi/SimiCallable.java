package net.globulus.simi;

import java.util.List;

public interface SimiCallable extends Codifiable {

  int arity();
  SimiProperty call(BlockInterpreter interpreter, List<SimiProperty> arguments, boolean rethrow);

  default String toCode(int indentationLevel, boolean ignoreFirst) {
    return null;
  }
}
