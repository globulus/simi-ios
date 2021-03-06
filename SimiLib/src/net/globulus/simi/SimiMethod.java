package net.globulus.simi;

import java.util.List;

class SimiMethod implements SimiCallable {

    final SimiClassImpl clazz;
    final SimiFunction function;

    SimiMethod(SimiClassImpl clazz, SimiFunction function) {
        this.clazz = clazz;
        this.function = function;
    }

    @Override
    public int arity() {
        return function.arity();
    }

    @Override
    public SimiProperty call(BlockInterpreter interpreter,
                             SimiEnvironment environment,
                             List<SimiProperty> arguments,
                             boolean rethrow) {
        return function.call(interpreter, environment, arguments, rethrow);
    }

    @Override
    public String toCode(int indentationLevel, boolean ignoreFirst) {
        return function.toCode(indentationLevel, ignoreFirst);
    }

    @Override
    public String toString() {
        return function.toString();
    }
}
