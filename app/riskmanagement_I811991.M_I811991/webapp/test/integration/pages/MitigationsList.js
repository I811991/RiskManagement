sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'riskmanagementI811991.MI811991',
            componentId: 'MitigationsList',
            entitySet: 'Mitigations'
        },
        CustomPageDefinitions
    );
});