---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SynchronizationJob
{
	TemplateId = "BoxOutDelta",
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs.PostAsync(requestBody);


```