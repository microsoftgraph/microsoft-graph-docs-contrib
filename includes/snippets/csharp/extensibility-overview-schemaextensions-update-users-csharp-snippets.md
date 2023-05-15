---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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