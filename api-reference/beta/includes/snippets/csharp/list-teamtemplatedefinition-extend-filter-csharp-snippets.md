---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Teamwork.TeamTemplates.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "definitions" };
	requestConfiguration.QueryParameters.Filter = "definitions/any(a:a/languageTag eq 'en-US')";
});


```