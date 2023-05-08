---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationSchool
{
	OdataType = "#microsoft.graph.educationSchool",
	DisplayName = "String",
	Description = "String",
	ExternalSource = EducationExternalSource.Sis,
	ExternalSourceDetail = "String",
	PrincipalEmail = "String",
	PrincipalName = "String",
	ExternalPrincipalId = "String",
	LowestGrade = "String",
	HighestGrade = "String",
	SchoolNumber = "String",
	ExternalId = "String",
	Phone = "String",
	Fax = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	Address = new PhysicalAddress
	{
		OdataType = "microsoft.graph.physicalAddress",
	},
};
var result = await graphClient.Education.Schools.PostAsync(requestBody);


```