@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZTABLE_STD'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_TABLE_STD
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_TABLE_STD
  association [1..1] to ZR_TABLE_STD as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  Gender,
  DateOfBirth,
  Age,
  Department,
  YearOfStudy,
  RollNumber,
  Email,
  PhoneNumber,
  Address,
  AdmissionDate,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
