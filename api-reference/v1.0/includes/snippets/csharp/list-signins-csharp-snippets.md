---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AuditLogs.SignIns.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z";
});


```