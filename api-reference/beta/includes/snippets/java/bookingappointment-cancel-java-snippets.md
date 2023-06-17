---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String cancellationMessage = "Your appointment has been successfully cancelled. Please call us again.";

graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com").appointments("AAMkADKoAAA=")
	.cancel(BookingAppointmentCancelParameterSet
		.newBuilder()
		.withCancellationMessage(cancellationMessage)
		.build())
	.buildRequest()
	.post();

```