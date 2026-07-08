---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Collaboration.AnalyzedEmails.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.StartTime = "2024-02-18";
	requestConfiguration.QueryParameters.EndTime = "2024-02-20";
});


```