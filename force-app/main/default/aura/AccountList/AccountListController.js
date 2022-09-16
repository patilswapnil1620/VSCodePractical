({
	reLoadData : function(component, event, helper) {
		var accList = event.getParam("accList");

        // set the handler attributes based on event data
        console.log('acclist is :'+accList);
        component.set("v.accList", accList);
        
       
	}
})