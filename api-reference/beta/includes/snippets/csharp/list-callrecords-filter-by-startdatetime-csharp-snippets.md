---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.CallRecords.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z";
});


```