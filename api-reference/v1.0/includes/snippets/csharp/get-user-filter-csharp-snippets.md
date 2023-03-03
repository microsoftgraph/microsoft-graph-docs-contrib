---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.ConsistencyLevel = "eventual";
	requestConfiguration.QueryParameters.Filter = "endsWith(mail,'@contoso.com')";
});


```