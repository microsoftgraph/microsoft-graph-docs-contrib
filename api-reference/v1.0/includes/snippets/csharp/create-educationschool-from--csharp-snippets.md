---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Schools.PostAsync(requestBody);


```