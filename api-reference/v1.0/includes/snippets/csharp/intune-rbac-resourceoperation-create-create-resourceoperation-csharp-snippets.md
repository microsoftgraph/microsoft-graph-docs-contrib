---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ResourceOperation
{
	OdataType = "#microsoft.graph.resourceOperation",
	ResourceName = "Resource Name value",
	ActionName = "Action Name value",
	Description = "Description value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.ResourceOperations.PostAsync(requestBody);


```