---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Security.DataSecurityAndGovernance.SensitivityLabels.ComputeRightsAndInheritance;
using Microsoft.Graph.Models;

var requestBody = new ComputeRightsAndInheritancePostRequestBody
{
	DelegatedUserEmail = "String",
	Locale = "String",
	ProtectedContents = new List<ProtectedContent>
	{
		new ProtectedContent
		{
			OdataType = "microsoft.graph.protectedContent",
		},
	},
	SupportedContentFormats = new List<string>
	{
		"String",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.DataSecurityAndGovernance.SensitivityLabels.ComputeRightsAndInheritance.PostAsync(requestBody);


```