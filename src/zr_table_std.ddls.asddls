@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZTABLE_STD'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TABLE_STD
  as select from ZTABLE_STD
{
  key student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  gender as Gender,
  date_of_birth as DateOfBirth,
  age as Age,
  department as Department,
  year_of_study as YearOfStudy,
  roll_number as RollNumber,
  email as Email,
  phone_number as PhoneNumber,
  address as Address,
  admission_date as AdmissionDate,
  status as Status,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
