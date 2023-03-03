---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.AccessReviews.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "businessFlowTemplateId eq '6e4f3d20-c5c3-407f-9695-8460952bcc68'";
	requestConfiguration.QueryParameters.Top = 100;
	requestConfiguration.QueryParameters.Skip = 0;
});


```