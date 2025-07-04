---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new NewsLinkPage
{
	OdataType = "#microsoft.graph.newsLinkPage",
	NewsWebUrl = "https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car",
	Title = "Contoso Unveils First Self-Driving Car",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Pages.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("prefer", "include-unknown-enum-members");
});


```