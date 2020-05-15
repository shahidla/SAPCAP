using empservice as empservice from '../../../srv/empsrv';


annotate empservice.GetEmpMain with @(
    UI:{
        SelectionFields: [email],
        LineItem: [
            {
                Label: 'Email',
                Value: email,
            },
            {
                Label: 'First Name',
                Value: first_name,
            },
            {
                Label: 'Last Name',
                Value: last_name,
            }
        ],
        HeaderInfo: {
            TypeName: 'Header',
            TypeNamePlural: 'Headers',
            Title: { 
                Value: last_name
                },
            Description: {
                Value: first_name,
                Label: 'first Name'
            }
        },
        Facets:[
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Personal Information',
                Target: '@UI.FieldGroup#PersonalInfo'
            },
             {
                $Type: 'UI.ReferenceFacet',
                Label: 'Item Details',
                Target: 'item/@UI.LineItem'
            }
        ],
   
      FieldGroup#PersonalInfo:{

            Data:[
                {
                    Label: 'First Name',
                    Value: first_name
                },
                 {
                    Label: 'Last Name',
                    Value: last_name
                },
                {
                    Label: 'Email',
                    Value: email
                }
            ]
        },
    }
);

annotate empservice.GetEmpInfo with @(
    UI:{

     LineItem: [
            {
                Label: 'Item ID',
                Value: ID,
            },
            {
                Label: 'Address',
                Value: address,
            },
            {
                Label: 'Phone',
                Value: phone,
            },            
            {
                Label: 'Header ID',
                Value: header.ID,
            }
        ],
        HeaderInfo: {
            TypeName: 'Item',
            TypeNamePlural: 'Items',
            Title: { 
                Value: address
                },
            Description: {
                Value: address,
                Label: 'Address'
            }
        },        
        Facets:[
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Employee Information',
                Target: '@UI.FieldGroup#EmpInfo'
            }
        ],
      FieldGroup#EmpInfo:{

            Data:[
                {
                    Label: 'Address',
                    Value: address
                },
                 {
                    Label: 'Phone',
                    Value: phone
                }
            ]
        },       
      
       
        }
);