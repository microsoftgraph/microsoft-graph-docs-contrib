---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Teams.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "displayName eq 'A Contoso Team'";
	requestConfiguration.QueryParameters.Select = new string []{ "id","description" };
});


```