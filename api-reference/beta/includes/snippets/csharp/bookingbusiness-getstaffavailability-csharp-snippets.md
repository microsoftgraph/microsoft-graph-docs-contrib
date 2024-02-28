---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Solutions.BookingBusinesses.Item.GetStaffAvailability;
using Microsoft.Graph.Beta.Models;

var requestBody = new GetStaffAvailabilityPostRequestBody
{
	StaffIds = new List<string>
	{
		"311a5454-08b2-4560-ba1c-f715e938cb79",
	},
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2022-01-25T00:00:00",
		TimeZone = "India Standard Time",
	},
	EndDateTime = new DateTimeTimeZone
	{
		DateTime = "2022-01-26T17:00:00",
		TimeZone = "Pacific Standard Time",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].GetStaffAvailability.PostAsGetStaffAvailabilityPostResponseAsync(requestBody);


```