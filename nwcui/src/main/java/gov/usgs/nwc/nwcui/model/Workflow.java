package gov.usgs.nwc.nwcui.model;

public class Workflow {
	private String name;
	private String URI;
	
	public Workflow(String name, String URI) {
		this.name = name;
		this.URI = URI;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getURI() {
		return URI;
	}
	
	public void setURI(String uRI) {
		URI = uRI;
	}	
}
