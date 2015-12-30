({
	updateRecord : function(component, event) {
        
        var recordId = event.getParam("recordId");
        
        component.set("{!v.recordId}",recordId);
	}
})