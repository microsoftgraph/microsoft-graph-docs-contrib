---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new CalendarPermission
{
	EmailAddress = new EmailAddress
	{
		Name = "Samantha Booth",
		Address = "samanthab@contoso.com",
	},
	IsInsideOrganization = true,
	IsRemovable = true,
	Role = CalendarRoleType.Read,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Calendar.CalendarPermissions.PostAsync(requestBody);


```