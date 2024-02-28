---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DirectoryObjects.Item.GetMemberGroups;

var requestBody = new GetMemberGroupsPostRequestBody
{
	SecurityEnabledOnly = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DirectoryObjects["{directoryObject-id}"].GetMemberGroups.PostAsGetMemberGroupsPostResponseAsync(requestBody);


```