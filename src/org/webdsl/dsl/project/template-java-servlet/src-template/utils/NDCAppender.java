package utils;

import java.io.StringWriter;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.HashMap;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.Layout;
import org.apache.log4j.Logger;
import org.apache.log4j.NDC;
import org.apache.log4j.WriterAppender;
import org.apache.log4j.spi.LoggingEvent;

public class NDCAppender extends AppenderSkeleton {
    protected Map<String, WriterAppender> appenderMap = new HashMap<String, WriterAppender>();
    protected Map<String, StringWriter> writerMap = new HashMap<String, StringWriter>();
    protected static Map<String, NDCAppender> namedMap = new HashMap<String, NDCAppender>();

    public NDCAppender() {
    }

    public NDCAppender(Layout layout) {
        this.layout = layout;
    }

    public void activateOptions() {
        if(this.name != null)
        {
            NDCAppender.putNamed(this);
        }
    }

    public boolean requiresLayout() {
        return true;
    }


    public static NDCAppender getFromLogger(String name) {
        Logger logger = Logger.getLogger(name);
        if(logger == null) return null;
        Enumeration appenderEnum = logger.getAllAppenders();
        while(appenderEnum.hasMoreElements()) {
            Object appender = appenderEnum.nextElement();
            if (appender instanceof NDCAppender) {
                return (NDCAppender)appender;
            }
        }
        return null;
    }

    protected synchronized static void putNamed(NDCAppender appender) {
        if(namedMap.containsKey(appender.name)) return;
        namedMap.put(appender.name, appender);
    }

    protected synchronized static void removeNamed(String name) {
        namedMap.remove(name);
    }

    public synchronized static NDCAppender getNamed(String name) {
        return namedMap.get(name);
    }

    public synchronized boolean addNDC(String ndc) {
        if(appenderMap.containsKey(ndc))
        {
            return false;
        }
        StringWriter newWriter = new StringWriter();
        WriterAppender newAppender = new WriterAppender(this.layout, newWriter);
        appenderMap.put(ndc, newAppender);
        writerMap.put(ndc, newWriter);
        return true;
    }

    public synchronized String getLog() {
        return getLog(NDC.get());
    }
    public synchronized String getLog(String ndc) {
        if(writerMap.containsKey(ndc))
        {
            return writerMap.get(ndc).toString();
        }
        return null;
    }

    public synchronized Iterator<String> ndcIterator() {
        return appenderMap.keySet().iterator();
    }

    public synchronized void removeNDC(String ndc) {
        if(appenderMap.containsKey(ndc))
        {
            appenderMap.get(ndc).close();
            appenderMap.remove(ndc);
            writerMap.remove(ndc);
        }
    }

    public void append(LoggingEvent event) {
        String ndc = event.getNDC();
        if(appenderMap.containsKey(ndc))
        {
            appenderMap.get(ndc).append(event);
        }
    }

    public synchronized void close() {
        if (this.closed) {
            return;
        }

        this.closed = true;

        if(this.name != null)
        {
            NDCAppender.removeNamed(this.name);
        }

        Iterator<String> i = appenderMap.keySet().iterator();
        while(i.hasNext()) {
            String ndc = i.next();
            appenderMap.get(ndc).close();
        }
        appenderMap.clear();
        writerMap.clear();
    }
}
