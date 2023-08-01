sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'riskmanagementI811991/MI811991/test/integration/FirstJourney',
		'riskmanagementI811991/MI811991/test/integration/pages/MitigationsList',
		'riskmanagementI811991/MI811991/test/integration/pages/MitigationsObjectPage',
		'riskmanagementI811991/MI811991/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, MitigationsList, MitigationsObjectPage, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('riskmanagementI811991/MI811991') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMitigationsList: MitigationsList,
					onTheMitigationsObjectPage: MitigationsObjectPage,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);