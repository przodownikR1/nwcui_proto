package gov.usgs.nwc.nwcui.factories;

import gov.usgs.nwc.nwcui.model.Workflow;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WorkflowFactory {
	private static final WorkflowFactory INSTANCE = new WorkflowFactory();        
    private static Map<String, Workflow> workflowMap;
    
    private WorkflowFactory() {
    	WorkflowFactory.workflowMap = new HashMap<String, Workflow>();
    	workflowMap.put("Water Budget", new Workflow("Water Budget", "/ang/waterbudget/#/waterbudget/value1/value2"));
    	workflowMap.put("Aquatic Biology", new Workflow("Aquatic Biology", "/ang/aquaticbiology/#/aquaticbiology/value1/value2"));
    	workflowMap.put("Streamflow Stats", new Workflow("Streamflow Stats", "/ang/streamflowstats/#/streamflowstats/value1/value2"));
    	workflowMap.put("Data Discovery", new Workflow("Data Discovery", "/ang/datadiscovery/#/datadiscovery/value1/value2"));
    }
    
    public static WorkflowFactory getInstance() {
            return INSTANCE;
    }
    
    public static void addWorkflow(String workflowName, String workflowPath) {                
            Workflow workflow = new Workflow(workflowName, workflowPath);
            
            if(workflow != null) {
            	workflowMap.put(workflowName, workflow);
            }
    }
    
    public Workflow getWorkflow(String workflowName) {
            return workflowMap.get(workflowName);
    }
    
    public List<Workflow> getWorkflows() {
    	List<String> keys = new ArrayList<String>(workflowMap.keySet());
    	Collections.sort(keys);
    	
    	List<Workflow> workflows = new ArrayList<Workflow>();
    	for(String key : keys) {
    		workflows.add(workflowMap.get(key));
    	}
    	
    	return workflows;    	
    }
}
