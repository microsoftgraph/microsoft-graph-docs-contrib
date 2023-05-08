---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.BookingBusinesses.Item.Appointments.Item.Cancel.CancelPostRequestBody
{
	CancellationMessage = "Your appointment has been successfully cancelled. Please call us again.",
};
await graphClient.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"].Cancel.PostAsync(requestBody);


```