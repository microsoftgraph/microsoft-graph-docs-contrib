---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Permissions.Item.RevokeGrants.RevokeGrantsPostRequestBody
{
	Grantees = new List<DriveRecipient>
	{
		new DriveRecipient
		{
			Email = "ryan@contoso.com",
		},
	},
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Permissions["{permission-id}"].RevokeGrants.PostAsync(requestBody);


```