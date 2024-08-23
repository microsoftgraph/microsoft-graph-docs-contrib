---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Sites.Item.Lists.Item.Items.Item.CreateLink;
using Microsoft.Graph.Beta.Models;

var requestBody = new CreateLinkPostRequestBody
{
	Type = "view",
	Scope = "anonymous",
	Password = "String",
	Recipients = new List<DriveRecipient>
	{
		new DriveRecipient
		{
			OdataType = "microsoft.graph.driveRecipient",
		},
	},
	SendNotification = true,
	RetainInheritedPermissions = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].CreateLink.PostAsync(requestBody);


```