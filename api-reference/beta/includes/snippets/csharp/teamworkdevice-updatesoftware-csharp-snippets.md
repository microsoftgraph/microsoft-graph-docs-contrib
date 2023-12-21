---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Teamwork.Devices.Item.UpdateSoftware;
using Microsoft.Graph.Beta.Models;

var requestBody = new UpdateSoftwarePostRequestBody
{
	SoftwareType = TeamworkSoftwareType.TeamsClient,
	SoftwareVersion = "1.0.96.22",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Teamwork.Devices["{teamworkDevice-id}"].UpdateSoftware.PostAsync(requestBody);


```