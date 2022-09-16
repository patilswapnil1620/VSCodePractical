({
	passValuesToParentComponent : function(component, event, helper) {
		var cmpEvent = component.getEvent("ComponentEventExample");
        cmpEvent.setParams({"message":"I am from child component"});
        cmpEvent.fire();
	}
})