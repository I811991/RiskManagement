using { bupa } from './external/bupa.cds';

using { riskmanagement_I811991 as my } from '../db/schema';

using riskmanagement_I811991 from '../db/schema';

@path : '/service/riskmanagement_I811991'
service riskmanagement_I811991Service
{
    annotate Mitigations with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] },
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    annotate Risks with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'RiskViewer' ] },
        { grant : [ '*' ], to : [ 'RiskManager' ] }
    ];

    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    entity A_Supplier as projection on bupa.A_BusinessPartner
    {
        BusinessPartner,
        BusinessPartnerFullName,
        BusinessPartnerIsBlocked
    };
}

annotate riskmanagement_I811991Service with @requires :
[
    'authenticated-user',
    'RiskViewer',
    'RiskManager'
];
