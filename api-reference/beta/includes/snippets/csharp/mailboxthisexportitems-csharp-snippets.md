---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Admin.Exchange.Mailboxes.Item.ExportItems;

var requestBody = new ExportItemsPostRequestBody
{
	ItemIds = new List<string>
	{
		"EDSVrdi3lRAADmpnf1AAA=",
		"EDSVrdi3lRAAD45b7RAAA=",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Exchange.Mailboxes["{mailbox-id}"].ExportItems.PostAsExportItemsPostResponseAsync(requestBody);


```