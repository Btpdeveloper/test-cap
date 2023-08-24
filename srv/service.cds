using { com.aa.org as my } from '../db/schema';

@path: 'myODataservie' // Entry point for oData service
service EmpService
{
    entity Employees as projection on my.Employees;
    entity Managers as projection on my.Managers;
}