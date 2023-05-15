---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Identity.ConditionalAccess.Templates.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "name","description","id","scenarios" };
	requestConfiguration.QueryParameters.Filter = "scenarios has 'secureFoundation'";
});


```