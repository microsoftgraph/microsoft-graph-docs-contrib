---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Solutions.BookingBusinesses.Item.GetStaffAvailability.GetStaffAvailabilityPostRequestBody
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
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].GetStaffAvailability.PostAsync(requestBody);


```