package net.globulus.simi;

import java.util.List;

interface NativeModulesManager {

    void load(String path);
    SimiProperty call(String className,
                   String methodName,
                   SimiObject self,
                   Interpreter interpreter,
                   List<SimiProperty> args) throws IllegalArgumentException;
}