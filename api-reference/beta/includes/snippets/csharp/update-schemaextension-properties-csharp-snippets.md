---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"ext55gb1l09_msLearnCourses", "{\"courseType\":\"Admin\"}"}
	}
};

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(user);

```