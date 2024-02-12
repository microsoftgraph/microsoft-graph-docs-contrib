---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OpenTypeExtension
{
	OdataType = "microsoft.graph.openTypeExtension",
	ExtensionName = "com.contoso.roamingSettings",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"theme" , "dark"
		},
		{
			"color" , "purple"
		},
		{
			"lang" , "Japanese"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Extensions.PostAsync(requestBody);


```