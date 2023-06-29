---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users["{user-id}"].Teamwork.InstalledApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "teamsApp","teamsAppDefinition" };
	requestConfiguration.QueryParameters.Filter = "teamsApp/externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'";
});


```