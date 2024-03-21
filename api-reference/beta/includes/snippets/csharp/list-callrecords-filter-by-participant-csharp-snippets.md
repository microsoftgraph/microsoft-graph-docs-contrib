---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Communications.CallRecords.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')";
});


```