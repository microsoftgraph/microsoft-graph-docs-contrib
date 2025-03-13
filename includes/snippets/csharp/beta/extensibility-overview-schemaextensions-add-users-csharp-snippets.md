---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new User
{
	AccountEnabled = true,
	DisplayName = "Adele Vance",
	MailNickname = "AdeleV",
	UserPrincipalName = "AdeleV@contoso.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = false,
		Password = "xWwvJ]6NMw+bWH-d",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"extkmpdyld2_graphLearnCourses" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"courseId", new UntypedString("100")
				},
				{
					"courseName", new UntypedString("Explore Microsoft Graph")
				},
				{
					"courseType", new UntypedString("Online")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users.PostAsync(requestBody);


```