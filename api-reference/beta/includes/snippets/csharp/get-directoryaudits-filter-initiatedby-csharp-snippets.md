---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AuditLogs.DirectoryAudits.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "initiatedBy/user/id eq '00000000-0000-0000-0000-000000000000'";
});


```