---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AppCatalogs.TeamsApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "appDefinitions($expand=dashboardCards)" };
	requestConfiguration.QueryParameters.Filter = "appDefinitions/any(a:a/dashboardCards ne null)";
});


```