---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AppCatalogs.TeamsApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "appDefinitions($expand=dashboardCards)" };
	requestConfiguration.QueryParameters.Filter = "appDefinitions/any(a:a/dashboardCards/$count ne 0)";
});


```