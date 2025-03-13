---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.GroupLifecyclePolicies.Item.RemoveGroup;

var requestBody = new RemoveGroupPostRequestBody
{
	GroupId = "ffffffff-ffff-ffff-ffff-ffffffffffff",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.GroupLifecyclePolicies["{groupLifecyclePolicy-id}"].RemoveGroup.PostAsRemoveGroupPostResponseAsync(requestBody);


```