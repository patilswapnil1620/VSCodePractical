({
	doInit : function(component, event, helper) {
		var action = component.get("c.find");
        action.setCallback(this,function(data){
            component.set("v.Accounts",data.getReturnValue());
        });
        $A.enqueueAction(action);
  },
    SearchKeyChange: function(component, event, helper){
        var searchkey =event.getParam("searchkey");
        var action = component.get("c.findByName");
        action.setParams({"searchkey":searchkey
            });
        action.setCallback(this,function(data){
            component.set("v.Accounts",data.getReturnvalue());
        });
         $A.enqueueAction(action);
    }
})