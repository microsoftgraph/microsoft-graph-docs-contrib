---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new AlertComment
{
	OdataType = "microsoft.graph.security.alertComment",
	Comment = "Demo for docs",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2["{alert-id}"].Comments.PostAsCommentsPostResponseAsync(requestBody);


```