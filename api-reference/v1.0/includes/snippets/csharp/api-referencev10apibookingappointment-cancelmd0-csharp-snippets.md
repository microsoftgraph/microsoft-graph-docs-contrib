---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Solutions.BookingBusinesses.Item.Appointments.Item.MicrosoftGraphCancel.CancelPostRequestBody
{
	CancellationMessage = "Your appointment has been successfully cancelled. Please call us again.",
};
await graphClient.Solutions.BookingBusinesses["bookingBusiness-id"].Appointments["bookingAppointment-id"].MicrosoftGraphCancel.PostAsync(requestBody);


```