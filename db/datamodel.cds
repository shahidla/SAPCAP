namespace ns;
using { cuid } from '@sap/cds/common';

entity EmpMain : cuid {
email : String(50);
first_name: String(40);
last_name: String(40);
item: Composition of many EmpInfo on item.header = $self;


}


entity EmpInfo : cuid {

address:String(40);
phone:String(20);
header: Association to EmpMain;

}



