package net.globulus.simi;

import java.util.List;

public interface SimiBlock {
    List<? extends SimiStatement> getStatements();
    void yield(int index);
    boolean canReturn();
}
