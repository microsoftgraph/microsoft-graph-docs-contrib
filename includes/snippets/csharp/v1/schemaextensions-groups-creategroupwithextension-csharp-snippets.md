---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Group
{
	DisplayName = "New Managers March 2017",
	Description = "New Managers training course for March 2017",
	GroupTypes = new List<string>
	{
		"Unified",
	},
	MailEnabled = true,
	MailNickname = "newMan201703",
	SecurityEnabled = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"graphlearn_courses" , new 
			{
				CourseId = "123",
				CourseName = "New Managers",
				CourseType = "Online",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups.PostAsync(requestBody);


```