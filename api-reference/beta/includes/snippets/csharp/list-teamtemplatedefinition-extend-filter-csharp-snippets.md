---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("filter", "definitions/any(a:a/languageTag eq 'en-US')")
};

var teamTemplates = await graphClient.Teamwork.TeamTemplates
	.Request( queryOptions )
	.Filter("definitions/any(a:a/languageTag eq 'en-US')")
	.Expand("definitions")
	.GetAsync();

```