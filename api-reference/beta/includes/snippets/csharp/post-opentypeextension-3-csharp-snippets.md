---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OpenTypeExtension
{
	OdataType = "microsoft.graph.openTypeExtension",
	ExtensionName = "Com.Contoso.Deal",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"companyName" , "Alpine Skis"
		},
		{
			"dealValue" , 1010100
		},
		{
			"expirationDate" , "2015-07-03T13:04:00.000Z"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].Events["{event-id}"].Extensions.PostAsync(requestBody);


```