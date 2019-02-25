package report.details;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author roman
 */
public class Bean {

   private List<String> vId = new ArrayList<String>();
   private List<String> vName = new ArrayList<String>();
   private List<String> vDis = new ArrayList<String>();

    public List<String> getvId() {
        return vId;
    }

    public void setvId(List<String> vId) {
        this.vId = vId;
    }

    public List<String> getvName() {
        return vName;
    }

    public void setvName(List<String> vName) {
        this.vName = vName;
    }

    public List<String> getvDis() {
        return vDis;
    }

    public void setvDis(List<String> vDis) {
        this.vDis = vDis;
    }

}
