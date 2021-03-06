package net.globulus.simi;

import java.util.List;

final class SimiPropertyImpl implements SimiProperty, Comparable<SimiPropertyImpl> {

    private SimiValue value;
    private final List<SimiObject> annotations;

    SimiPropertyImpl(SimiValue value, List<SimiObject> annotations) {
        this.value = value;
        this.annotations = annotations;
    }

    public SimiPropertyImpl clone(boolean mutable) {
        return new SimiPropertyImpl((value != null) ? value.clone(mutable) : null, annotations);
    }

    @Override
    public int compareTo(SimiPropertyImpl o) {
        return value.compareTo(o.value);
    }

    @Override
    public String toString() {
        return (value == null) ? null : value.toString();
    }

    @Override
    public SimiValue getValue() {
        return value;
    }

    @Override
    public void setValue(SimiValue value) {
        this.value = value;
    }

    @Override
    public List<SimiObject> getAnnotations() {
        return annotations;
    }
}
