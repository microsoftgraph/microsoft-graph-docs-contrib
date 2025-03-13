---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new Group
{
	DisplayName = "New Managers March 2024",
	Description = "New Managers training course for March 2024",
	GroupTypes = new List<string>
	{
		"Unified",
	},
	MailEnabled = true,
	MailNickname = "newMan202403",
	SecurityEnabled = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"bellowscollege_courses" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"courseId", new UntypedString("123")
				},
				{
					"courseName", new UntypedString("New Managers")
				},
				{
					"courseType", new UntypedString("Online")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups.PostAsync(requestBody);


```