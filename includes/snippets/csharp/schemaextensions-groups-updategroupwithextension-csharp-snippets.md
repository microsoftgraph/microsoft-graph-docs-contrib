---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Group
{
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
var result = await graphClient.Groups["{group-id}"].PatchAsync(requestBody);


```