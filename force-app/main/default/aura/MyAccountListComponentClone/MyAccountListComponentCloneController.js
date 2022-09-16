({
	searchAccounts : function(component, event, helper) {
        component.set('v.columns', [
            {label: 'Account Id', fieldName: 'Id', type: 'text'},
            {label: 'Account Name', fieldName: 'Name', type: 'text'},
            {label: 'Account Industry', fieldName: 'industry', type: 'text'}
        ]);
		helper.searchAccountDetails(component, event, helper);
	}
})