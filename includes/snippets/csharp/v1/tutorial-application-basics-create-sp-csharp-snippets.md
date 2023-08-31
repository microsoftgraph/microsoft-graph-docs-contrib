---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	AppId = "fc876dd1-6bcb-4304-b9b6-18ddf1526b62",
};
var result = await graphClient.ServicePrincipals.PostAsync(requestBody);


```