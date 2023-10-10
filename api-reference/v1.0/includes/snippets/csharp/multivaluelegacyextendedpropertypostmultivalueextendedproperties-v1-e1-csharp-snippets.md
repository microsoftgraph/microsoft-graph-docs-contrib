---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Event
{
	Subject = "Family reunion",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Let's get together this Thanksgiving!",
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2015-11-26T09:00:00",
		TimeZone = "Pacific Standard Time",
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2015-11-29T21:00:00",
		TimeZone = "Pacific Standard Time",
	},
	Attendees = new List<Attendee>
	{
		new Attendee
		{
			EmailAddress = new EmailAddress
			{
				Address = "Terrie@contoso.com",
				Name = "Terrie Barrera",
			},
			Type = AttendeeType.Required,
		},
		new Attendee
		{
			EmailAddress = new EmailAddress
			{
				Address = "Lauren@contoso.com",
				Name = "Lauren Solis",
			},
			Type = AttendeeType.Required,
		},
	},
	MultiValueExtendedProperties = new List<MultiValueLegacyExtendedProperty>
	{
		new MultiValueLegacyExtendedProperty
		{
			Id = "StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation",
			Value = new List<string>
			{
				"Food",
				"Hiking",
				"Swimming",
			},
		},
	},
};
var result = await graphClient.Me.Events.PostAsync(requestBody);


```