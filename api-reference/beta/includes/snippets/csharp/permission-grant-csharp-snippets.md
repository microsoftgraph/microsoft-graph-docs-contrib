---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Shares.Item.Permission.Grant;
using Microsoft.Graph.Beta.Models;

var requestBody = new GrantPostRequestBody
{
	Recipients = new List<DriveRecipient>
	{
		new DriveRecipient
		{
			Email = "john@contoso.com",
		},
		new DriveRecipient
		{
			Email = "ryan@external.com",
		},
	},
	Roles = new List<string>
	{
		"read",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Shares["{sharedDriveItem-id}"].Permission.Grant.PostAsGrantPostResponseAsync(requestBody);


```