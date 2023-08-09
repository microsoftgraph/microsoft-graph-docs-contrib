---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extkmpdyld2_graphLearnCourses" , new 
			{
				CourseType = "Instructor-led",
				CourseId = null,
			}
		},
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```