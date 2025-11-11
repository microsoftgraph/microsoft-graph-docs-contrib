---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Desk
{
	OdataType = "microsoft.graph.desk",
	DisplayName = "D1",
	ParentId = "1ad0f725-6885-49c5-9a47-3b22a1f9409d",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Places.PostAsync(requestBody);


```