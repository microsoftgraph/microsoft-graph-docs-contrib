---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Reports.HealthMonitoring.Alerts.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "state eq microsoft.graph.healthmonitoring.alertState'active'";
	requestConfiguration.QueryParameters.Select = new string []{ "id"," alertType" };
});


```