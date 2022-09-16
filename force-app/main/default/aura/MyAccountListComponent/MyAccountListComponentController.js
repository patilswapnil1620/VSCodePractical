({
    doInit : function(component, event, helper) {
        helper.fetchAccHelper(null,component);
    },
    
    searchAccounts : function(component, event, helper){
        var searchValue = component.find("searchField").get("v.value");
        helper.fetchAccHelper(searchValue,component);
    }
})