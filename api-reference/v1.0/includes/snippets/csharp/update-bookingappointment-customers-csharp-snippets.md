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
	Customers = new List<BookingCustomerInformationBase>
	{
		new BookingCustomerInformation
		{
			OdataType = "#microsoft.graph.bookingCustomerInformation",
			CustomerId = "cd56bb19-c348-42c6-af5c-09818c87fb8c",
			Name = "John Doe",
			EmailAddress = "john.doe@example.com",
			Phone = "313-555-5555",
		},
		new BookingCustomerInformation
		{
			OdataType = "#microsoft.graph.bookingCustomerInformation",
			CustomerId = "72f148fa-9a86-4c59-b277-f5089d9ea0e7",
			Name = "Jane Smith",
			EmailAddress = "jane.smith@example.com",
			Phone = "248-555-5678",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BookingBusinesses["{bookingBusiness-id}"].Appointments["{bookingAppointment-id}"].PatchAsync(requestBody);


```