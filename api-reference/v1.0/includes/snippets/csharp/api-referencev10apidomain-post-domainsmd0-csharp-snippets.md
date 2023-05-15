---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Domain
{
	Id = "contoso.com",
};
var result = await graphClient.Domains.PostAsync(requestBody);


```