---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CalendarPermission
{
	EmailAddress = new EmailAddress
	{
		Name = "Samantha Booth",
		Address = "samanthab@adatum.onmicrosoft.com",
	},
	IsInsideOrganization = true,
	IsRemovable = true,
	Role = CalendarRoleType.Read,
};
var result = await graphClient.Users["{user-id}"].Calendar.CalendarPermissions.PostAsync(requestBody);


```