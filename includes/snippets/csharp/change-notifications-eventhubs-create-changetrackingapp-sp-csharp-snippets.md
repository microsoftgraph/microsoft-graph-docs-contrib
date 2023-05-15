---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	AppId = "0bf30f3b-4a52-48df-9a82-234910c4a086",
};
var result = await graphClient.ServicePrincipals.PostAsync(requestBody);


```