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
			"ext55gb1l09_msLearnCourses" , new 
			{
				CourseType = "Admin",
			}
		},
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```