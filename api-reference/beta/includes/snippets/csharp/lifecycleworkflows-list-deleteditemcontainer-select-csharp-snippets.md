---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.LifecycleWorkflows.DeletedItems.Workflows.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "id","category","displayName","description","version" };
	requestConfiguration.QueryParameters.Filter = "category eq 'leaver'";
});


```