---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.RestorePoints.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "protectionUnit($filter=id eq 'd234cf54-e0fb-49b7-9c8a-5bcd1439e853')" };
	requestConfiguration.QueryParameters.Filter = "protectionDateTime lt 2024-05-12T10:01:00Z";
});


```