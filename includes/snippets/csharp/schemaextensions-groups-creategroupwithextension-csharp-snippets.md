---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.Groups.PostAsync(requestBody);


```