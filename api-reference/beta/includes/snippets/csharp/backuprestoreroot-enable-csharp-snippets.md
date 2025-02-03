---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.BackupRestore.Enable;

var requestBody = new EnablePostRequestBody
{
	AppOwnerTenantId = "23014d8c-71fe-4d00-a01a-31850bc5b42a",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.Enable.PostAsync(requestBody);


```