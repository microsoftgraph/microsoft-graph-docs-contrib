---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new Extension
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"xboxGamerTag", "FierceAdele"},
		{"linkedInProfile", "www.linkedin.com/in/testlinkedinprofile"}
	}
};

await graphClient.Users["{user-id}"].Extensions["{extension-id}"]
	.Request()
	.UpdateAsync(extension);

```