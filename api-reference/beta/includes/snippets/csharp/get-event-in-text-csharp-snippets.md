---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Events["{event-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "subject","body","bodyPreview" };
	requestConfiguration.Headers.Add("Prefer", "outlook.body-content-type=\"text\"");
});


```