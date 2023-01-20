---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var staffIds = new List<String>()
{
	"311a5454-08b2-4560-ba1c-f715e938cb79"
};

var startDateTime = new DateTimeTimeZone
{
	DateTime = "2022-01-25T00:00:00",
	TimeZone = "India Standard Time"
};

var endDateTime = new DateTimeTimeZone
{
	DateTime = "2022-01-26T17:00:00",
	TimeZone = "Pacific Standard Time"
};

await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"]
	.GetStaffAvailability(staffIds,startDateTime,endDateTime)
	.Request()
	.PostAsync();

```