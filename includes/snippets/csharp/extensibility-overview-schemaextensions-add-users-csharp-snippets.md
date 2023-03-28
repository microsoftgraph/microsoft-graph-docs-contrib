---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	AccountEnabled = true,
	DisplayName = "Adele Vance",
	MailNickname = "AdeleV",
	UserPrincipalName = "AdeleV@m365x72712789.onmicrosoft.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = false,
		Password = "xWwvJ]6NMw+bWH-d",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extkmpdyld2_graphLearnCourses" , new 
			{
				CourseId = 100,
				CourseName = "Explore Microsoft Graph",
				CourseType = "Online",
			}
		},
	},
};
var result = await graphClient.Users.PostAsync(requestBody);


```