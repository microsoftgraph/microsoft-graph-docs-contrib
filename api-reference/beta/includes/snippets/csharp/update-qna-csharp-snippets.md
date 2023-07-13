---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Search.Qna
{
	Description = "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.",
};
var result = await graphClient.Search.Qnas["{qna-id}"].PatchAsync(requestBody);


```