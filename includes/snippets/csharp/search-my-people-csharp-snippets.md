---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.People.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Search = "\"Irene McGowen\"";
});


```