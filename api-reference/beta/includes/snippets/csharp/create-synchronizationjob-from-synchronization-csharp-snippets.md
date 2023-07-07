---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SynchronizationJob
{
	TemplateId = "BoxOutDelta",
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs.PostAsync(requestBody);


```