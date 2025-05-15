---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CopilotAdminLimitedMode
{
	OdataType = "#microsoft.graph.copilotAdminLimitedMode",
	IsEnabledForGroup = true,
	GroupId = "4c563cdf-0efa-44c5-a384-dbf57db277df",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Copilot.Admin.Settings.LimitedMode.PatchAsync(requestBody);


```