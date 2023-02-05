---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	DisplayName = "Adele Vance",
	MailNickname = "AdeleV",
	UserPrincipalName = "AdeleV@m365x72712789.onmicrosoft.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = false,
		Password = "xWwvJ]6NMw+bWH-d"
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"extkmpdyld2_graphLearnCourses", "{\"courseId\":100,\"courseName\":\"Explore Microsoft Graph\",\"courseType\":\"Online\"}"}
	}
};

await graphClient.Users
	.Request()
	.AddAsync(user);

```