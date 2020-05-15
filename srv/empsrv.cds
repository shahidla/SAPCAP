
using { ns as empns  } from '../db/datamodel';


service empservice @(_requires:'admin'){ 
     
     entity GetEmpMain as projection on empns.EmpMain;
     entity GetEmpInfo as projection on empns.EmpInfo;

    

}

annotate empservice.GetEmpMain with @odata.draft.enabled;



