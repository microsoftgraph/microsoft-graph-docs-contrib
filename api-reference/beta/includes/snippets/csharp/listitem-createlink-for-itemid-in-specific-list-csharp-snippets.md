---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Sites.Item.Lists.Item.Items.Item.CreateLink.CreateLinkPostRequestBody
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
var result = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].CreateLink.PostAsync(requestBody);


```