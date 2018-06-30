package net.globulus.simi;

import java.util.List;

public interface SimiClass extends SimiObject {
    SimiProperty init(BlockInterpreter interpreter, List<SimiProperty> args);
}
