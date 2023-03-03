---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Users.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Select = new string []{ "id","displayName","customSecurityAttributes" };
	requestConfiguration.QueryParameters.Filter = "startsWith(customSecurityAttributes/Marketing/EmployeeId,'GS')";
	requestConfiguration.Headers.Add("ConsistencyLevel", "eventual");
});


```