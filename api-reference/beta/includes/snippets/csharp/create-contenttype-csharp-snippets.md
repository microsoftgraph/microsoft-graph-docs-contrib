---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ContentType
{
	Name = "docSet",
	Description = "custom docset",
	Base = new ContentType
	{
		Name = "Document Set",
		Id = "0x0120D520",
	},
	Group = "Document Set Content Types",
};
var result = await graphClient.Sites["{site-id}"].ContentTypes.PostAsync(requestBody);


```