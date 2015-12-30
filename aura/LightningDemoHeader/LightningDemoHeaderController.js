({
	updateSampleRecord : function(component, event) {
       
        // retrieve the record Id from the component
        var recordId = component.get("v.recordId");

        //retrieve the event component
        var evt = $A.get("e.c:updateRecordEvent");

        // set the parameter
        evt.setParams({
            "recordId": recordId
        });

        //fire it off!
        evt.fire();
	}
})