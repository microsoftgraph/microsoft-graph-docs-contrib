---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ApplicationTemplates.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "displayName eq 'AWS IAM Identity Center '";
});


```