---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Contacts.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Count = true;
});


```