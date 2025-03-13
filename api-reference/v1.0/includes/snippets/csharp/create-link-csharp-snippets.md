---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.CreateLink;

var requestBody = new CreateLinkPostRequestBody
{
	Type = "view",
	Password = "ThisIsMyPrivatePassword",
	Scope = "anonymous",
	RetainInheritedPermissions = false,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].CreateLink.PostAsync(requestBody);


```