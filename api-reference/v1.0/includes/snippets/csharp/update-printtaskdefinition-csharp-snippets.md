---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrintTaskDefinition
{
	DisplayName = "Test TaskDefinitionName",
	CreatedBy = new AppIdentity
	{
		DisplayName = "Requesting App Display Name",
	},
};
var result = await graphClient.Print.TaskDefinitions["{printTaskDefinition-id}"].PatchAsync(requestBody);


```