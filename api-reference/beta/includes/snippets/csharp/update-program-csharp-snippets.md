---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Program
{
	DisplayName = "testprogram3 new name",
};
var result = await graphClient.Programs["{program-id}"].PatchAsync(requestBody);


```