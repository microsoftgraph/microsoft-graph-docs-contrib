---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new CustomBlockPage
{
	State = Status.Enabled,
	Configuration = new MarkdownBlockMessageConfiguration
	{
		OdataType = "#microsoft.graph.networkaccess.markdownBlockMessageConfiguration",
		Body = "Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware's Terms of Use](https://www.bing.com).",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Settings.CustomBlockPage.PatchAsync(requestBody);


```