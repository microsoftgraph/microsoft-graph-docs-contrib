---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Event
{
	Subject = "Let's go for lunch",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Does late morning work for you?",
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2019-06-16T12:00:00",
		TimeZone = "Pacific Standard Time",
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2019-06-16T14:00:00",
		TimeZone = "Pacific Standard Time",
	},
	Location = new Location
	{
		DisplayName = "Harry's Bar",
	},
	Attendees = new List<Attendee>
	{
		new Attendee
		{
			EmailAddress = new EmailAddress
			{
				Address = "adelev@contoso.com",
				Name = "Adele Vance",
			},
			Type = AttendeeType.Required,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Groups["{group-id}"].Events.PostAsync(requestBody);


```