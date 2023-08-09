---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingBusiness
{
	Email = "admin@fabrikam.com",
	SchedulingPolicy = new BookingSchedulingPolicy
	{
		TimeSlotInterval = TimeSpan.Parse("PT60M"),
		MinimumLeadTime = TimeSpan.Parse("P1D"),
		MaximumAdvance = TimeSpan.Parse("P30D"),
		SendConfirmationsToOwner = true,
		AllowStaffSelection = true,
	},
};
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].PatchAsync(requestBody);


```