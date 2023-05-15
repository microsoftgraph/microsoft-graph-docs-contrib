---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Application
{
	AppRoles = new List<AppRole>
	{
		new AppRole
		{
			AllowedMemberTypes = new List<string>
			{
				"User",
				"Application",
			},
			Description = "Survey.Read",
			DisplayName = "Survey.Read",
			Id = Guid.Parse("7a9ddfc4-cc8a-48ea-8275-8ecbffffd5a0"),
			IsEnabled = false,
			Origin = "Application",
			Value = "Survey.Read",
		},
	},
};
var result = await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```