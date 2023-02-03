---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new Group
{
	Description = "Self help community for golf",
	DisplayName = "Golf Assist",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	MailEnabled = true,
	MailNickname = "golfassist",
	SecurityEnabled = false
};

await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members
	.Request()
	.AddAsync(directoryObject);

```