---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Communications.OnlineMeetings.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "VideoTeleconferenceId eq '123456789'";
});


```