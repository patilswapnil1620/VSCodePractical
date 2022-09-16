({
    searchAccountDetails : function(component, event, helper) {
        var searchVal = component.get("v.searchKeyword"); // get attribute value
        
        var action = component.get("c.fetchAccount"); //action define,
        
        action.setParams({
            "searchKeyword":searchVal
        });//set parameter in action,
        
        action.setCallback(this,function(response){
            //we get three info from response 
            var state = response.getState(); // 1) state : success / error
            if(state==='SUCCESS'){
                var value = response.getReturnValue(); //2) value
                console.log('value: '+JSON.stringify(value));
                component.set("v.lstAccount",value); 
                var appEvent = $A.get("e.c:AccountListDisplay");
                console.log('List of account is' +component.get("v.lstAccount"));
                appEvent.setParams({
                    
                    "accList" : component.get("v.lstAccount") });
               appEvent.fire();
            }
            else{
                var error = response.getError(); //3) error
                console.log('an error occured during fetching the data'+error);
            }
            
        });//include callback function to get response,
        
        $A.enqueueAction(action);// enqueue action // asynchronous call
        
    }
})