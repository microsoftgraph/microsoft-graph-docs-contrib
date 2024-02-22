---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Security;

var requestBody = new Alert
{
	AssignedTo = "secAdmin@contoso.com",
	Classification = AlertClassification.TruePositive,
	Determination = AlertDetermination.Malware,
	Status = AlertStatus.InProgress,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2["{alert-id}"].PatchAsync(requestBody);


```