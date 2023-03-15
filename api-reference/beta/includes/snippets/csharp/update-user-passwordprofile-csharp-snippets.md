---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "xWwvJ]6NMw+bWH-d",
	},
};
var result = await graphClient.Users["{user-id}"].PatchAsync(requestBody);


```