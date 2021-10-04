---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarPermission = new CalendarPermission
{
	EmailAddress = new EmailAddress
	{
		Name = "Samantha Booth",
		Address = "samanthab@adatum.onmicrosoft.com"
	},
	IsInsideOrganization = true,
	IsRemovable = true,
	Role = CalendarRoleType.Read
};

await graphClient.Me.Calendar.CalendarPermissions
	.Request()
	.AddAsync(calendarPermission);

```