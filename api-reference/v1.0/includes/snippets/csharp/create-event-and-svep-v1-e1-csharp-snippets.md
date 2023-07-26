---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Event
{
	Subject = "Celebrate Thanksgiving",
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "Let's get together!",
	},
	Start = new DateTimeTimeZone
	{
		DateTime = "2015-11-26T18:00:00",
		TimeZone = "Pacific Standard Time",
	},
	End = new DateTimeTimeZone
	{
		DateTime = "2015-11-26T23:00:00",
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
	},
	SingleValueExtendedProperties = new List<SingleValueLegacyExtendedProperty>
	{
		new SingleValueLegacyExtendedProperty
		{
			Id = "String {66f5a359-4659-4830-9070-00040ec6ac6e} Name Fun",
			Value = "Food",
		},
	},
};
var result = await graphClient.Me.Events.PostAsync(requestBody);


```