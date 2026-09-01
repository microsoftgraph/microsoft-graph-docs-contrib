---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.Teamwork.Sections.Item.Items.Reorder;

var requestBody = new ReorderPostRequestBody
{
	ItemsOrder = new List<string>
	{
		"19:meeting_MTUxMjg0OGItZTY3MC00NTkyLTg1NzMtZTVkZTcyZDU5ZGVi@thread.v2",
		"19:978e3806-38a4-4104-a07f-57abfa8cdf9a_bdf9c93b-12ea-4e8f-8383-d0ca66d5ff48@unq.gbl.spaces",
		"19:94961b6eacc04e2392e34709c66cb610@thread.v2",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Teamwork.Sections["{teamworkSection-id}"].Items.Reorder.PostAsReorderPostResponseAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("If-Match", "\"1742515200\"");
});


```