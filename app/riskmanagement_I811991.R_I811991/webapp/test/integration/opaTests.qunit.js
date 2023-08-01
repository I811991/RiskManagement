sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'riskmanagementI811991/RI811991/test/integration/FirstJourney',
		'riskmanagementI811991/RI811991/test/integration/pages/RisksList',
		'riskmanagementI811991/RI811991/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('riskmanagementI811991/RI811991') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);