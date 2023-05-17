---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "name","lastModifiedDateTime" };
	requestConfiguration.QueryParameters.Expand = new string []{ "columns(select=name,description)","items",")" };
});


```