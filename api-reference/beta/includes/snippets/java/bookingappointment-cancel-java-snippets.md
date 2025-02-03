---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.bookingbusinesses.item.appointments.item.cancel.CancelPostRequestBody cancelPostRequestBody = new com.microsoft.graph.beta.solutions.bookingbusinesses.item.appointments.item.cancel.CancelPostRequestBody();
cancelPostRequestBody.setCancellationMessage("Your appointment has been successfully cancelled. Please call us again.");
graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").appointments().byBookingAppointmentId("{bookingAppointment-id}").cancel().post(cancelPostRequestBody);


```