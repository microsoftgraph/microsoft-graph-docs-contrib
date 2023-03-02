---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.PrivilegedOperationEvents.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "requestType eq 'Deactivate'";
});


```