---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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
var result = await graphClient.Me.Calendar.CalendarPermissions.PostAsync(requestBody);


```