---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new ReferenceDefinition
{
	OdataType = "#microsoft.graph.industryData.referenceDefinition",
	ReferenceType = "RefGradeLevel",
	Code = "TestGrade",
	IsDisabled = false,
	SortIndex = 300,
	DisplayName = "New Test Grade Level",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.ReferenceDefinitions.PostAsync(requestBody);


```