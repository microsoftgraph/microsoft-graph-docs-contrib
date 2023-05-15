---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Messages.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "Extensions/any";
	requestConfiguration.QueryParameters.Expand = new string []{ "Extensions($filter=id%20eq%20'Com.Contoso.Referral')" };
});


```