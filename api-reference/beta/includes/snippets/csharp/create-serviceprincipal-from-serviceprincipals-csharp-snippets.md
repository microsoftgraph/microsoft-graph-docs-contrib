---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	AppId = "65415bb1-9267-4313-bbf5-ae259732ee12",
};
var result = await graphClient.ServicePrincipals.PostAsync(requestBody);


```