/*
 * Similar to org.hibernate.search.impl.SimpleIndexingProgressMonitor,
 * except for that it uses direct console to log progress and entity info is added.
 */

package org.webdsl.search;

import java.util.concurrent.atomic.AtomicLong;

import org.hibernate.search.batchindexing.MassIndexerProgressMonitor;


public class IndexProgressMonitor implements MassIndexerProgressMonitor {

    private final AtomicLong documentsDoneCounter = new AtomicLong();
    private final AtomicLong totalCounter = new AtomicLong();
    private volatile long startTime;
    private final int loggingPeriod;
    private final String entity;
    private int avgSpeed = 0;
    private long lastElapsedMs = 0;

    /**
     * Logs progress of indexing job every <code>loggingPeriod</code>
     * documents written.
     * @param loggingPeriod the logging period
     */
    public IndexProgressMonitor(int loggingPeriod, String entity) {
        this.loggingPeriod = loggingPeriod;
        this.entity = entity;
    }

    public void entitiesLoaded(int size) {
        //not used
    }

    public void documentsAdded(long increment) {
        long current = documentsDoneCounter.addAndGet( increment );
        if ( current == increment ) {
            startTime = System.currentTimeMillis();
        }
        if ( current % loggingPeriod == 0 ) {
            printStatusMessage( startTime, totalCounter.get(), current );
        }
    }

    public void documentsBuilt(int number) {
        //not used
    }

    public void addToTotalCount(long count) {
        totalCounter.addAndGet( count );
        org.webdsl.logging.Logger.info( "Number of entities: " + count);
    }

    public void indexingCompleted() {
        long failed = totalCounter.get() - documentsDoneCounter.get();
        org.webdsl.logging.Logger.info( "Reindexed " + documentsDoneCounter.get() + " entities, failed: " + failed);
        if (failed > 0){
            org.webdsl.logging.Logger.info( "If no error messages were shown during indexing you might need to add 'debug=true' to your application.ini and recompile + reindex again");
        }
    }

    protected void printStatusMessage(long starttime, long totalTodoCount, long doneCount) {
        long elapsedMs = System.currentTimeMillis() - starttime ;
        long lastElapsedMsCount = elapsedMs -lastElapsedMs;
        int estimateSpeed = (int) (loggingPeriod * 1000 / lastElapsedMsCount);
        int estimatePercentileComplete = (int) (doneCount * 100 / totalTodoCount);
        int etaMin, etaSec;
        double elapsedSec = ( (int) ( elapsedMs / 100 ) ) / 10.0;
        avgSpeed = (avgSpeed==0) ? estimateSpeed : (avgSpeed*7+estimateSpeed)/8;
        etaSec = (int) (totalTodoCount-doneCount)/(avgSpeed);
        etaMin = (int) (etaSec/60);
        etaSec = etaSec % 60;

        org.webdsl.logging.Logger.info( entity + " (" + doneCount + "/" + totalTodoCount+ " = " + estimatePercentileComplete + "%) indexed in " + elapsedSec + "s (" + estimateSpeed + " ent/s ETA: "+etaMin+"m"+etaSec+"s)");
        lastElapsedMs = elapsedMs;
    }
}
