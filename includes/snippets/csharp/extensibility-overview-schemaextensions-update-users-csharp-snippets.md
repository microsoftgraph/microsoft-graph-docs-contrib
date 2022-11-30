---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"extkmpdyld2_graphLearnCourses", "{\"courseType\":\"Instructor-led\",\"courseId\":null}"}
	}
};

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(user);

```