sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'riskmanagementI811991.MI811991',
            componentId: 'MitigationsObjectPage',
            entitySet: 'Mitigations'
        },
        CustomPageDefinitions
    );
});