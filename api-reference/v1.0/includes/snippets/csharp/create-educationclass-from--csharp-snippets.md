---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new EducationClass
{
	OdataType = "#microsoft.graph.educationClass",
	DisplayName = "String",
	MailNickname = "String",
	Description = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	ClassCode = "String",
	ExternalName = "String",
	ExternalId = "String",
	ExternalSource = EducationExternalSource.Sis,
	ExternalSourceDetail = "String",
	Grade = "String",
	Term = new EducationTerm
	{
		OdataType = "microsoft.graph.educationTerm",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Education.Classes.PostAsync(requestBody);


```