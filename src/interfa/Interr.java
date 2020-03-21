package interfa;

import bean.Auditregbean;
import bean.Oregbean;
import bean.Setkey;
import bean.Uploadbean;
import bean.Uregbean;

public interface Interr {
	
	public int oreg(Oregbean orb);
	public boolean olog(Oregbean olb);
	public int file(Uploadbean upb);
	public int ureg(Uregbean urb);
	public boolean ulog(Uregbean ulb);
	public int auditreg(Auditregbean aur);
	public boolean auditlog(Auditregbean aul);
	public int req(Oregbean rq);
	public int key(Setkey ks);
	public int freq(Uploadbean frq);
	public int resp(Uploadbean frp);
	

}
