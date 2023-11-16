---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Alert
{
	AssignedTo = "String",
	ClosedDateTime = DateTimeOffset.Parse("String (timestamp)"),
	Comments = new List<string>
	{
		"String",
	},
	Feedback = AlertFeedback.Unknown,
	Status = AlertStatus.Unknown,
	Tags = new List<string>
	{
		"String",
	},
	VendorInformation = new SecurityVendorInformation
	{
		Provider = "String",
		Vendor = "String",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts["{alert-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```