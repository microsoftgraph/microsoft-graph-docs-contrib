---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Me.CheckMemberObjects;

var requestBody = new CheckMemberObjectsPostRequestBody
{
	Ids = new List<string>
	{
		"80a963dd-84af-4eb8-b2a6-781e444d4fb0",
		"62e90394-69f5-4237-9190-012177145e10",
		"86a64f51-3a64-4cc6-a8c8-6b8f000c0f52",
		"ac38546e-ddf3-437a-ac5c-27a94cd7a0f1",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.CheckMemberObjects.PostAsCheckMemberObjectsPostResponseAsync(requestBody);


```