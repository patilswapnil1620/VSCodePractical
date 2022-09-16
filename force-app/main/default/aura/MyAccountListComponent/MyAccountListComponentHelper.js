({
    fetchAccHelper : function(searchVal,component) {
     /* component.set("v.columnsToDisplay",[
            {label:"Account Name" fieldName: "Name" type: "text"},
           {label: "industry" fieldName: "industry" type: "text"}
        ]);*/
        
        var action = component.get("c.fetchAccount");
        action.setParams({
            "searchKeyword":searchVal
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state==='SUCCESS'){
                component.set("v.lstAccount",response.getReturnValue());
            }
            else{
                alert('an error occured during fetching the data');
            }
            
        });
        $A.enqueueAction(action);
        
    }
})