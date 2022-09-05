---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingAppointment bookingAppointment = graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com").appointments("AAMkADKnAAA=")
	.buildRequest()
	.get();

```