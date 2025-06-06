using cap_ext_servService as service from '../../srv/service';
annotate service.ExternalProd with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ProductID',
            Value : ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ProductName',
            Value : ProductName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SupplierID',
            Value : SupplierID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CategoryID',
            Value : CategoryID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QuantityPerUnit',
            Value : QuantityPerUnit,
        },
        {
            $Type : 'UI.DataField',
            Value : UnitsOnOrder,
            Label : 'UnitsOnOrder',
        },
        {
            $Type : 'UI.DataField',
            Value : UnitsInStock,
            Label : 'UnitsInStock',
        },
        {
            $Type : 'UI.DataField',
            Value : UnitPrice,
            Label : 'UnitPrice',
        },
        {
            $Type : 'UI.DataField',
            Value : ReorderLevel,
            Label : 'ReorderLevel',
        },
        {
            $Type : 'UI.DataField',
            Value : Discontinued,
            Label : 'Discontinued',
        },
    ],
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductID',
            Target : '@UI.DataPoint#ProductID',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ProductName',
            Target : '@UI.DataPoint#ProductName',
        },
    ],
    UI.FieldGroup #Dadosdoproduto : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
        ],
    },
    UI.DataPoint #ProductID : {
        $Type : 'UI.DataPointType',
        Value : ProductID,
        Title : 'ProductID',
    },
    UI.DataPoint #ProductName : {
        $Type : 'UI.DataPointType',
        Value : ProductName,
        Title : 'ProductName',
    },
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : ProductID,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : ProductName,
        },
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Dados do Produto',
            ID : 'Dadosdo',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Dados Principais',
                    ID : 'DadosPrincipais',
                    Target : '@UI.FieldGroup#DadosPrincipais',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Order Details',
            ID : 'OrderDetails',
            Target : 'Order_Details/@UI.LineItem#OrderDetails',
        },
    ],
    UI.FieldGroup #DadosPrincipais : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CategoryID,
                Label : 'CategoryID',
            },
            {
                $Type : 'UI.DataField',
                Value : Discontinued,
                Label : 'Discontinued',
            },
            {
                $Type : 'UI.DataField',
                Value : QuantityPerUnit,
                Label : 'QuantityPerUnit',
            },
            {
                $Type : 'UI.DataField',
                Value : ReorderLevel,
                Label : 'ReorderLevel',
            },
            {
                $Type : 'UI.DataField',
                Value : SupplierID,
                Label : 'SupplierID',
            },
            {
                $Type : 'UI.DataField',
                Value : UnitPrice,
                Label : 'UnitPrice',
            },
            {
                $Type : 'UI.DataField',
                Value : UnitsInStock,
                Label : 'UnitsInStock',
            },
            {
                $Type : 'UI.DataField',
                Value : UnitsOnOrder,
                Label : 'UnitsOnOrder',
            },
        ],
    },
);

annotate service.ExternalProd with {
    ProductID @Common.Text : ProductName
};

annotate service.ExternalOrderDetails with @(
    UI.LineItem #OrderDetails : [
        {
            $Type : 'UI.DataField',
            Value : Discount,
            Label : 'Discount',
        },
        {
            $Type : 'UI.DataField',
            Value : OrderID,
            Label : 'OrderID',
        },
        {
            $Type : 'UI.DataField',
            Value : ProductID,
            Label : 'ProductID',
        },
        {
            $Type : 'UI.DataField',
            Value : Quantity,
            Label : 'Quantity',
        },
        {
            $Type : 'UI.DataField',
            Value : UnitPrice,
            Label : 'UnitPrice',
        },
    ]
);

