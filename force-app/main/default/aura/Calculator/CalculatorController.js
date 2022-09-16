({
    Calculate : function(component, event, helper) {
        //this code for without attribute
        /*fnumber=component.find("fnum").get("v.value");
        snumber=component.find("snum").get("v.value");  
        result=component.find("Result"); 
        result.set("v,value",fnumber+snumber);*/
        
        //this code for with attribute  
      /*  var fnumber=component.get("v.fnumber");
        var  snumber=component.get("v.snumber");
        component.set("v.result",fnumber+snumber);*/
        
        //This code for apex controller
        
         var fnumber=component.get("v.fnumber");
        var  snumber=component.get("v.snumber");
        var action=component.get("c.calculateValues");
        action.setParams({"firstnumber":fnumber,"secondnumber":snumber});
        action.setCallback(this,function(response){
          var state=response.getState(); 
           // var valueFromResp=response.getReturnValue();
            if(state=="SUCCESS"){
                component.set("v.result",response.getReturnValue());
              }
            });
               $A.enqueueAction(action);
            
    }
})