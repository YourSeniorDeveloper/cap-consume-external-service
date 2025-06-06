sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'externalprodmanagementui/test/integration/FirstJourney',
		'externalprodmanagementui/test/integration/pages/ExternalProdList',
		'externalprodmanagementui/test/integration/pages/ExternalProdObjectPage'
    ],
    function(JourneyRunner, opaJourney, ExternalProdList, ExternalProdObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('externalprodmanagementui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheExternalProdList: ExternalProdList,
					onTheExternalProdObjectPage: ExternalProdObjectPage
                }
            },
            opaJourney.run
        );
    }
);