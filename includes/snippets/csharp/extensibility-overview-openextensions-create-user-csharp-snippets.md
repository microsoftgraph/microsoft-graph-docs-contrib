---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new OpenTypeExtension
{
	ExtensionName = "com.contoso.socialSettings",
	Id = "com.contoso.socialSettings",
	AdditionalData = new Dictionary<string, object>()
	{
		{"skypeId", "skypeId.AdeleV"},
		{"linkedInProfile", "www.linkedin.com/in/testlinkedinprofile"},
		{"xboxGamerTag", "AwesomeAdele"}
	}
};

await graphClient.Users["{user-id}"].Extensions
	.Request()
	.AddAsync(extension);

```