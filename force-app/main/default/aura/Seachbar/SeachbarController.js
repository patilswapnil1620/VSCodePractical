({
	searchkeychange : function(component, event, helper) {
        var myEvent = $A.get("e.c:searchkeychange");
        myEvent.setParams({"Searchkey":event.target.value});
        myEvent.fire();
	}
})