---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Teams["{team-id}"].InstalledApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "teamsApp","teamsAppDefinition" };
	requestConfiguration.QueryParameters.Filter = "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'";
});


```