---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "graphlearn_courses/courseId eq '123'";
	requestConfiguration.QueryParameters.Select = new string []{ "displayName","id","description","graphlearn_courses" };
});


```