package net.globulus.simi;

public interface SimiEnvironment {
    void define(String name, SimiProperty property);
    SimiProperty tryGet(String name);
}
