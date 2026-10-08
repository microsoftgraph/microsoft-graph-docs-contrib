---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.DeletedContainers.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "containerTypeId eq e2756c4d-fa33-4452-9c36-2325686e1082";
});


```