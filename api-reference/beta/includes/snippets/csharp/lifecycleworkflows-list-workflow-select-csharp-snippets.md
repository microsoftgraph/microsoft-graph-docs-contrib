---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.LifecycleWorkflows.Workflows.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "category eq 'leaver'";
	requestConfiguration.QueryParameters.Select = new string []{ "id","category","displayName","isEnabled","isSchedulingEnabled" };
});


```