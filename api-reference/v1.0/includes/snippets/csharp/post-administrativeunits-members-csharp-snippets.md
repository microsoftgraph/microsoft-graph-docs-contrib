---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
	OdataType = "#microsoft.graph.group",
	Description = "Self help community for golf",
	DisplayName = "Golf Assist",
	GroupTypes = new List<string>
	{
		"Unified",
	},
	MailEnabled = true,
	MailNickname = "golfassist",
	SecurityEnabled = false,
};
var result = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"].Members.PostAsync(requestBody);


```