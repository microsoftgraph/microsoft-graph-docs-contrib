---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Logs.GenerativeAIInsights.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "activity eq 'prompt'";
	requestConfiguration.QueryParameters.Orderby = new string []{ "createdDateTime desc" };
	requestConfiguration.QueryParameters.Top = 25;
});


```