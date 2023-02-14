({
	toggleOptionalTab: function (cmp) {
        cmp.set('v.isFourVisible', !cmp.get('v.isFourVisible'));
    },
     handleShowActiveSectionName: function (cmp, event, helper) {
        alert(cmp.find("accordion").get('v.activeSectionName'));
    },
    handleSetActiveSectionC: function (cmp) {
        cmp.find("accordion").set('v.activeSectionName', 'C');},
     openAlert: function(cmp, event, helper) {
        helper.openAlert(cmp, event);
    }
})