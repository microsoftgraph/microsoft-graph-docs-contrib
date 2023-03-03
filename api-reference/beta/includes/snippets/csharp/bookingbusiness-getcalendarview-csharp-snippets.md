---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.BookingBusinesses["{bookingBusiness-id}"].CalendarView.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Start = "2018-04-30T00:00:00Z";
	requestConfiguration.QueryParameters.End = "2018-05-10T00:00:00Z";
});


```