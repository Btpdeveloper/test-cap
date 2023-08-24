namespace com.aa.org;

using {managed} from '@sap/cds/common';

entity Employees : managed { // Managed - CreatedAt , CreatedBy, ModifiedAt, modifiedBy
    key ID         : UUID        @(Core.Computed: true); //Auto Computed by CAP Framework
        email      : String(100) @assert.format: '.+@abcd[.]com';
        name       : String(50)  @mandatory;
        mgr        : Association to Managers; //One Employee is associated to one manager
        level      : Integer     @assert.range : [
            1,
            6
        ];
        level_name : String(100);
}

entity Managers : managed {
    key ID       : UUID @(Core.Computed: true); //Auto Computed by CAP Framework
        name     : String(50);
        practice : String(50);
        emps     : Association to many Employees
                       on emps.mgr = $self; //One Manager is Assocated with multiple Employees

}
