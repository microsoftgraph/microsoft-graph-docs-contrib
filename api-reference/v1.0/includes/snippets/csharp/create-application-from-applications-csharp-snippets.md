---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	DisplayName = "Display name",
};
var result = await graphClient.Applications.PostAsync(requestBody);


```