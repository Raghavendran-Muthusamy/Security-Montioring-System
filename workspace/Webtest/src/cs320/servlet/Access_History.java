package cs320.servlet;
import java.util.*;
@SuppressWarnings("unused")
public class Access_History {
	
	private String mac_address ;
	private String emp_id ;
	private String issue = " ";
	private String domain_ip = " ";
	private int id= 100;
	
	public Access_History()
	{
	}
	
	public Access_History(String mac_address,String emp_id,String issue,String domain_ip)
	{
		
		this.mac_address = mac_address;
		this.emp_id= emp_id;
		this.issue =issue;
		this.domain_ip = domain_ip;
		
		
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMac_address() {
		return mac_address;
	}

	public void setMac_address(String mac_address) {
		this.mac_address = mac_address;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getIssue() 
	{
		return issue;
	}

	public void setIssue(String issue) 
	{
		this.issue = issue;
	}

	public String getDomain_ip() 
	{
		return domain_ip;
	}

	public void setDomain_ip(String domain_ip)
	{
		this.domain_ip = domain_ip;
	}
	
	
	
	
	
	
	

}
