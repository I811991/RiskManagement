using riskmanagement_I811991Service as service from '../../srv/service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Priority',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : impact,
            Criticality : criticality,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier_BusinessPartner,
            Label : 'Supplier',
        },
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Priority',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
                Label : 'Mitigation ID',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier',
                Value : supplier_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerFullName,
                Label : 'Supplier Full Name',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerIsBlocked,
                Label : 'Supplier Is Blocked',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Risks with {
    supplier @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_Supplier',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : supplier_BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerIsBlocked',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Risks with {
    miti @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Mitigations',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : miti_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'owner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'timeline',
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Mitigations with {
    ID @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
