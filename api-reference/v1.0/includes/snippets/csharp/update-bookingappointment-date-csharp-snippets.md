---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new BookingAppointment
{
	OdataType = "#microsoft.graph.bookingAppointment",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"end" , new DateTimeTimeZone
			{
				OdataType = "#microsoft.graph.dateTimeTimeZone",
				DateTime = "2018-05-06T12:30:00.0000000+00:00",
				TimeZone = "UTC",
			}
		},
		{
			"start" , new DateTimeTimeZone
			{
				OdataType = "#microsoft.graph.dateTimeTimeZone",
				DateTime = "2018-05-06T12:00:00.0000000+00:00",
				TimeZone = "UTC",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"].PatchAsync(requestBody);


```