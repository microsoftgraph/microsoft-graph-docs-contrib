---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BookingService
{
	OdataType = "#microsoft.graph.bookingService",
	DefaultDuration = TimeSpan.Parse("PT30M"),
};
var result = await graphClient.BookingBusinesses["{bookingBusiness-id}"].Services["{bookingService-id}"].PatchAsync(requestBody);


```