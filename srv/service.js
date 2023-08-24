const cds = require('@sap/cds');
module.exports = function () {
    // This is the event Handler
    this.after('READ', 'Employees', each => {
        switch (each.level) {
            case 1:
                each.level_name = 'Associate Developer';
                break;
            case 2:
                each.level_name = 'Senior Developer';
                break;
            case 3:
                each.level_name = 'Associate Manager';
                break;
            default:
                each.level_name = 'TBD'
                break;

        }
    });
}